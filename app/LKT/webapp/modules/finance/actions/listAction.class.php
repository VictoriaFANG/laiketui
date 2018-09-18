<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */
require_once(MO_LIB_DIR . '/DBAction.class.php');
require_once(MO_LIB_DIR . '/ShowPager.class.php');
require_once(MO_LIB_DIR . '/Tools.class.php');

class listAction extends Action {

    public function getDefaultView() {

        $db = DBAction::getInstance();

        $request = $this->getContext()->getRequest();
		$name = addslashes(trim($request->getParameter('name'))); // 用户名
        $pageto = $request->getParameter('pageto'); // 导出
        $pagesize = $request->getParameter('pagesize'); // 每页显示多少条数据
        $page = $request->getParameter('page'); // 页码
		$condition = 'status = 1';
		if($name){
			$condition .= " and name = '$name' ";
		}

        $sql = "select a.id,a.name,a.add_date,a.money,a.s_charge,a.mobile,a.status,(select Bank_name from lkt_user b1 where b1.wx_name = a.name) as Bank_name,(select Cardholder from lkt_user b2 where b2.wx_name = a.name) as Cardholder,(select Bank_card_number from lkt_user b3 where b3.wx_name = a.name) as Bank_card_number from lkt_withdraw a where $condition";
        $r = $db->select($sql);
        $total = count($r);
        $pager = new ShowPager($total,$pagesize,$page);
        $offset = $pager->offset;
        if($pageto == 'all'){ // 导出全部
            // 查询提现表(id、会员名称、提交时间、提现金额、提现手续费、联系电话、状态),根据会员表(微信昵称)与提现表(会员昵称),查询(银行名称、持卡人、银行卡号)，以id降序排列
            $sql = "select a.id,a.name,a.add_date,a.money,a.s_charge,a.mobile,a.status,(select Bank_name from lkt_user b1 where b1.wx_name = a.name) as Bank_name,(select Cardholder from lkt_user b2 where b2.wx_name = a.name) as Cardholder,(select Bank_card_number from lkt_user b3 where b3.wx_name = a.name) as Bank_card_number from lkt_withdraw a where $condition order by a.id desc ";
            $list = $db->select($sql);
        }else if($pageto == 'ne'){ // 导出本页
            $sql = "select t1.id,t1.name,t1.add_date,t1.money,t1.s_charge,t1.mobile,t1.status,(select Bank_name from lkt_user b1 where b1.wx_name = t1.name) as Bank_name,(select Cardholder from lkt_user b2 where b2.wx_name = t1.name) as Cardholder,(select Bank_card_number from lkt_user b3 where b3.wx_name = t1.name) as Bank_card_number from (select * from lkt_withdraw a where $condition order by a.id desc limit $offset,$pagesize) t1, lkt_user t2 where t1.name = t2.user_name ";
            $list = $db->select($sql);
        }else{ // 不导出
            // 查询提现表(id、会员名称、提交时间、提现金额、提现手续费、联系电话、状态),根据会员表(微信昵称)与提现表(会员昵称),查询(银行名称、持卡人、银行卡号)
            $sql = "select a.id,a.name,a.add_date,a.money,a.s_charge,a.mobile,a.status,(select Bank_name from lkt_user b1 where b1.wx_name = a.name) as Bank_name,(select Cardholder from lkt_user b2 where b2.wx_name = a.name) as Cardholder,(select Bank_card_number from lkt_user b3 where b3.wx_name = a.name) as Bank_card_number from lkt_withdraw a where $condition";
            $list = $db->select($sql);
        }
		$request->setAttribute("name",$name);
        $request->setAttribute("list",$r);
        $request->setAttribute('pageto',$pageto);
        
        return View :: INPUT;
    }

    public function execute() {

    }

    public function getRequestMethods(){
        return Request :: NONE;
    }

}

?>