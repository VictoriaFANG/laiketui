<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */
require_once(MO_LIB_DIR . '/DBAction.class.php');
require_once(MO_LIB_DIR . '/ShowPager.class.php');
require_once(MO_LIB_DIR . '/Tools.class.php');

class IndexAction extends Action {

    public function getDefaultView() {
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $name = addslashes(trim($request->getParameter('name'))); // 用户名
        $tel = addslashes(trim($request->getParameter('tel'))); // 联系电话
		$startdate = $request->getParameter("startdate");
		$enddate = $request->getParameter("enddate");

		$m = $request->getParameter("m");
		if($m){
			$res = $this->recharge();
			echo $res;
			exit;
		}
		
		$condition = '';
		if($name != ''){
			$condition .= " and wx_name like '%$name%' ";
		}
		
		if($tel != ''){
			$condition .= " and mobile = '$tel' ";
		}
		
		if($startdate != ''){
			$condition .= "and Register_data >= '$startdate 00:00:00' ";
		}
		if($enddate != ''){
			$condition .= "and Register_data <= '$enddate 23:59:59' ";
		}

		$pageto = $request -> getParameter('pageto');
		// 导出
		$pagesize = $request -> getParameter('pagesize');
		// 每页显示多少条数据
		$page = $request -> getParameter('page');
		// 页码

        $sql = "select * from lkt_user where 1=1 " . $condition;
        $r = $db->select($sql);

		$total = count($r);
		$pager = new ShowPager($total, $pagesize, $page);
		$offset = $pager -> offset;
		if ($pageto == 'ne') {
			$sql .= " limit $offset,$pagesize";
			$r = $db -> select($sql);
		}
		//查询订单数
		foreach ($r as $key => $value) {
	        $sql = "select SUM(z_price) as z_price from lkt_order where user_id='$value->user_id' ";
	        $r1 = $db->select($sql);
	        if($r1[0]->z_price){
	        	$r[$key]->z_price = $r1[0]->z_price;
	        }else{
	        	$r[$key]->z_price = 0;
	        }
	        $sql = "select id from lkt_order where user_id='$value->user_id' ";
	        $r[$key]->z_num = $db->selectrow($sql);
		}

		$request -> setAttribute('pageto', $pageto);
		$request->setAttribute("name",$name);
		$request->setAttribute("tel",$tel);
        $request->setAttribute("list",$r);
		$request->setAttribute('startdate',$startdate);
		$request->setAttribute('enddate',$enddate);
        return View :: INPUT;
    }

    public function recharge()
    {
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $user_id = addslashes(trim($request->getParameter('user_id'))); // 用户user_id
        $types = trim($request->getParameter('m'));
        $price = trim($request->getParameter('price'));
        $str = $types == 'money' ? '余额':($types == 'consumer_money' ? '消费金':'积分');
        if($price < 0){

	        $sql = "select $types from lkt_user where user_id = '$user_id'";
	        $rs = $db->select($sql);
	        $rprice = $rs[0]->$types;
	        if($rprice + $price >= 0){
				$sql = "update lkt_user set $types = $types + '$price' where user_id = '$user_id'";
				$res = $db -> update($sql);
				//添加日志
				if($res){
					$event = $user_id . '系统充值' . $price .$str;
					$sqll = "insert into lkt_record (user_id,money,oldmoney,event,type) values ('$user_id','$price','$price','$event',11)";
					$rr = $db -> insert($sqll);
				}
				if($types == 'score'){
	                $record = "会员" . $userid . "消费了" . $allow . "积分";
	                $sql = "insert into lkt_sign_record (user_id,sign_score,record,sign_time,type) values ('$user_id','$price','$record',CURRENT_TIMESTAMP,1)";
	                $r_sign = $db->insert($sql);
				}
	        }else{
	        	return 0;
	        }


        }else{
			$sql = "update lkt_user set $types = $types + '$price' where user_id = '$user_id'";
			$res = $db -> update($sql);
			//添加日志 类型 0:登录/退出 1:充值 2:提现 3:分享4:余额消费 5:退款 6红包提现 7佣金 8管理佣金 9 待定 10 消费金 11 系统扣款
			if($res){
				$event = $user_id . '系统充值' . $price .$str;
				$sqll = "insert into lkt_record (user_id,money,oldmoney,event,type) values ('$user_id','$price','$price','$event',1)";
				$rr = $db -> insert($sqll);
			}else{
	        	return 0;
	        }
        }

		return $res;
    }

    public function execute() {

    }

    public function getRequestMethods(){
        return Request :: NONE;
    }

}

?>