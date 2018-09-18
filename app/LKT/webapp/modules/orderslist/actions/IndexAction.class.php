<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */
require_once (MO_LIB_DIR . '/DBAction.class.php');
require_once (MO_LIB_DIR . '/ShowPager.class.php');
require_once (MO_LIB_DIR . '/Tools.class.php');

class IndexAction extends Action {

	public function getDefaultView() {
		$db = DBAction::getInstance();
		$request = $this -> getContext() -> getRequest();
		$ordtype = array('t0' => '全部订单', 't1' => '普通订单', 't2' => '拼团订单', 't3' => '抽奖订单');
		$data = array('未付款', '未发货', '已发货', '待评论', '退货', '已签收');
		$otype = isset($_GET['otype']) && $_GET['otype'] !== '' ? $_GET['otype'] : false;
		$status = isset($_GET['status']) && $_GET['status'] !== '' ? $_GET['status'] : false;
		$ostatus = isset($_GET['ostatus']) && $_GET['ostatus'] !== '' ? $_GET['ostatus'] : false;
		$sNo = isset($_GET['sNo']) && $_GET['sNo'] !== '' ? $_GET['sNo'] : false;
		$brand = trim($request -> getParameter('brand'));
		$prostr = '';
		if ($brand) {
			$prostr .= " and lpl.brand_id = '$brand'";
		}
		$brand_str = '';
        $sql01 = "select brand_id ,brand_name from lkt_brand_class";
        $r01 = $db->select($sql01);
		foreach ($r01 as $key => $value) {
			if ($brand == $value->brand_id) {
				$brand_str .= "<option selected='selected' value='$value->brand_id'>$value->brand_name</option>";
			}else{
				$brand_str .= "<option value='$value->brand_id'>$value->brand_name</option>";
			}
		}
		
		$condition = ' where 1=1';

		$pageto = $request -> getParameter('pageto');
		// 导出
		$pagesize = $request -> getParameter('pagesize');
		$pagesize = $pagesize ? $pagesize:'10';
		// 每页显示多少条数据
		$page = $request -> getParameter('page');

		// 页码
		if($page){
			$start = ($page-1)*10;
		}else{
			$start = 0;
		}
		

		$startdate = $request -> getParameter("startdate");
		$enddate = $request -> getParameter("enddate");
		if ($startdate != '') {
			$condition .= " and add_time >= '$startdate 00:00:00' ";
		}
		if ($enddate != '') {
			$condition .= " and add_time <= '$enddate 23:59:59' ";
		}

		if ($otype == 't1') {
			$condition .= " and o.otype!='pt' and o.drawid=0";
		} else if ($otype == 't2') {
			$condition .= " and o.otype='pt'";
		} else if ($otype == 't3') {
			$condition .= " and o.otype!='pt' and o.drawid>0";
		}

		if (strlen($status) == 1) {
			if ($status !== false) {
				$cstatus = intval($status);
				$condition .= " and o.status=$cstatus";
			}
		} else if (strlen($status) > 1) {
			if ($status !== false) {
				$cstatus = intval(substr($status, 1));
				$condition .= " and o.ptstatus=$cstatus";
			}
		}
		if ($ostatus !== false) {
			$costatus = intval(substr($ostatus, 1));
			$condition .= " and o.status=$costatus";
		}
		if ($sNo !== false)
			$condition .= ' and (o.sNo like "%' . $sNo . '%" or o.name like "%' . $sNo . '%" or o.mobile like "%' . $sNo . '%")';
		$class = '';
		foreach ($data as $k => $v) {
			if ($status === false) {
				$class .= '<option value="' . $k . '">' . $v . '</option>';
			} else {
				$ystatus = intval($status);
				if ($ystatus === $k) {
					$class .= '<option selected="selected" value="' . $k . '">' . $v . '</option>';
				} else {
					$class .= '<option value="' . $k . '">' . $v . '</option>';
				}
			}
		}

		$sql1111 = 'select o.id,o.sNo,o.name,o.sheng,o.shi,o.xian,o.address,o.add_time,o.mobile,o.z_price,o.status,o.drawid,o.otype,o.ptstatus,o.spz_price,o.pay,o.drawid,lu.user_name,o.user_id from lkt_order as o left join lkt_user as lu on o.user_id = lu.user_id order by add_time desc ';
		

		$sqlcf = "select * from lkt_config where id = '1'";
		$rcf = $db -> select($sqlcf);
		$uploadImg = $rcf[0] -> uploadImg;
		$request -> setAttribute("uploadImg", $uploadImg);
		$total =  $db -> selectrow($sql1111);

		if ($pageto == 'all') {
			$sql1 = 'select o.id,o.consumer_money,o.sNo,o.name,o.sheng,o.shi,o.xian,o.address,o.add_time,o.mobile,o.z_price,o.status,o.drawid,o.otype,o.ptstatus,o.spz_price,o.pay,o.drawid,lu.user_name,o.user_id from lkt_order as o left join lkt_user as lu on o.user_id = lu.user_id ' . $condition . ' order by add_time desc ';
			$res1 = $db -> select($sql1);
		}else{
			$sql1 = "select o.id,o.consumer_money,o.sNo,o.name,o.sheng,o.shi,o.xian,o.address,o.add_time,o.mobile,o.z_price,o.status,o.drawid,o.otype,o.ptstatus,o.spz_price,o.pay,o.drawid,lu.user_name,o.user_id from lkt_order as o left join lkt_user as lu on o.user_id = lu.user_id $condition order by add_time desc limit $start,$pagesize";
			$res1 = $db -> select($sql1);
		}
		
		$pages_show = $this->multipage('index.php?module=orderslist',round($total/$pagesize),$page, $para = '');

        //获取目前设置的分销商品
        $sql ="select a.id from lkt_product_list AS a RIGHT JOIN lkt_configure AS c ON a.id = c.pid where a.is_distribution = 1 and a.num >0 group by c.pid ";
        $distribution_products = $db->select($sql);
        foreach ($distribution_products as $key => $value) {
            $distribution_products[$key] = $value->id;
        }
        $distribution_products = (array)$distribution_products;
		foreach ($res1 as $k => $v) {
			$res1[$k] -> statu = $res1[$k] -> status;
            $zqprice = 0;
            $user_id = $v->user_id;
			$sqldt = "select lpl.imgurl,lpl.product_title,lod.p_price,lod.unit,lod.num,lod.size,lod.p_id from lkt_order_details as lod left join lkt_product_list as lpl on lpl.id=lod.p_id where r_sNo='$v->sNo' $prostr";
			$products = $db -> select($sqldt);
			if ($products) {
				$res1[$k] -> products = $products;
				if ($v -> otype == 'pt') {
					switch ($v->status) {
						case 0 :
							$res1[$k] -> status = '未付款';
							$res1[$k] -> bgcolor = '#f5b1aa';
							break;
						case 9 :
							$res1[$k] -> status = '拼团中';
							$res1[$k] -> bgcolor = '#f5b199';
							break;
						case 1 :
							$res1[$k] -> status = '拼团成功-未发货';
							$res1[$k] -> bgcolor = '#f0908d';
							break;
						case 2 :
							$res1[$k] -> status = '拼团成功-已发货';
							$res1[$k] -> bgcolor = '#f0908d';
							break;
						case 3 :
							$res1[$k] -> status = '拼团成功-已签收';
							$res1[$k] -> bgcolor = '#f0908d';
							break;
						case 5 :
							$res1[$k] -> status = '已签收';
							$res1[$k] -> bgcolor = '#f7b977';
							break;
						case 10 :
							$res1[$k] -> status = '拼团失败-未退款';
							$res1[$k] -> bgcolor = '#ee827c';
							break;
						case 11 :
							$res1[$k] -> status = '拼团失败-已退款';
							$res1[$k] -> bgcolor = '#ee827c';
							break;
					}
				} else {
					switch ($v->status) {
						case 0 :
							$res1[$k] -> status = '未付款';
							$res1[$k] -> bgcolor = '#f5b1aa';
							break;
						case 1 :
							$res1[$k] -> status = '未发货';
							$res1[$k] -> bgcolor = '#f09199';
							break;
						case 2 :
							$res1[$k] -> status = '已发货';
							$res1[$k] -> bgcolor = '#f19072';
							break;
						case 3 :
							$res1[$k] -> status = '待评论';
							$res1[$k] -> bgcolor = '#e4ab9b';
							break;
						case 4 :
							$res1[$k] -> status = '退货';
							$res1[$k] -> bgcolor = '#e198b4';
							break;
						case 6 :
							$res1[$k] -> status = '订单取消';
							$res1[$k] -> bgcolor = '#ffbd8b';
							break;
						case 5 :
							$res1[$k] -> status = '已签收';
							$res1[$k] -> bgcolor = '#f7b977';
							break;
					}
				}
				$str = '';
		        $res1[$k] -> yongjin = $str;

			} else {
				unset($res1[$k]);
			}
		}

		$request -> setAttribute("brand_str", $brand_str);
		$request -> setAttribute("startdate", $startdate);
		$request -> setAttribute("enddate", $enddate);
		$request -> setAttribute("ordtype", $ordtype);
		$request -> setAttribute("class", $class);
		$request -> setAttribute("order", $res1);
		$request -> setAttribute("sNo", $sNo);
		$request -> setAttribute("otype", $otype);
		$request -> setAttribute("status", $status);
		$request -> setAttribute("ostatus", $ostatus);
		$request -> setAttribute('pageto', $pageto);
		$request -> setAttribute('pages_show', $pages_show);

		return View::INPUT;
	}

/**
 * @param $maxpage  总页数
 * @param $page    当前页
 * @param string $para  翻页参数(不需要写$page),如http://www.example.com/article.php?page=3&id=1，$para参数就应该设为'&id=1'
 * @return string  返回的输出分页html内容
 */
function multipage($url,$maxpage, $page, $para = '') {
    $multipage = '';  //输出的分页内容
    $listnum = 5;     //同时显示的最多可点击页面

    if ($maxpage < 2) {
        return '';
    }else{
        $offset = 2;
        if ($maxpage <= $listnum) {
            $from = 1;
            $to = $maxpage;
        } else {
            $from = $page - $offset; //起始页
            $to = $from + $listnum - 1;  //终止页
            if($from < 1) {
                $to = $page + 1 - $from;
                $from = 1;
                if($to - $from < $listnum) {
                    $to = $listnum;
                }
            } elseif($to > $maxpage) {
                $from = $maxpage - $listnum + 1;
                $to = $maxpage;
            }
        }

        $multipage .= ($page - $offset > 1 && $maxpage >= $page ? "<li><a href='$url&page=1".$para."' >1...</a></li>" : '').
            ($page > 1 ? "<li><a href='$url&page=".($page - 1).$para.'\' >&laquo;</a></li>' : '');

        for($i = $from; $i <= $to; $i++) {
            $multipage .= $i == $page ? "<li class='active'><a href='$url&page=".$i.$para.'\' >'.$i.'</a></li>' : "<li><a href='$url&page=".$i.$para.'\' >'.$i.'</a></li>';
        }

        $multipage .= ($page < $maxpage ? "<li><a href='$url&page=".($page + 1).$para.'\' >&raquo;</a></li>' : '').
            ($to < $maxpage ? "<li><a href='$url&page=".$maxpage.$para.'\' class="last" >...'.$maxpage.'</a></li>' : '');



        $multipage = $multipage ? '<ul class="pagination">'.$multipage.'</ul>' : '';
    }

    return $multipage;
}


	public function execute() {

	}

	public function getRequestMethods() {
		return Request::NONE;
	}

}
?>