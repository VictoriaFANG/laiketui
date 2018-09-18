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

        $p_name = addslashes(trim($request->getParameter('p_name'))); // 产品名称
        $startdate = $request->getParameter("startdate");
        $enddate = $request->getParameter("enddate");
        $pageto = $request->getParameter('pageto'); // 导出
        $pagesize = $request->getParameter('pagesize'); // 每页显示多少条数据
        $page = $request->getParameter('page'); // 页码

        $condition = ' r_status = 4 ';
        if($p_name != ''){
            $condition .= " and r_sNo like '%$p_name%' ";
        }
        if($startdate != ''){
            $condition .= "and arrive_time >= '$startdate 00:00:00' ";
        }
        if($enddate != ''){
            $condition .= "and arrive_time <= '$enddate 23:59:59' ";
        }
        $sql1 = "select * from lkt_order_details where $condition";
        $r1 = $db->select($sql1);
        $total = count($r1);
        $pager = new ShowPager($total,$pagesize,$page);
        $offset = $pager->offset;
        if($pageto == 'ne'){// 导出本页
            $sql = "select * from lkt_order_details where $condition  order by id asc limit $offset,$pagesize  ";
            $r = $db->select($sql);
        }else{
            $r = $r1;
        }
       
        $request->setAttribute("p_name",$p_name);
        $request->setAttribute("startdate",$startdate);
        $request->setAttribute("enddate",$enddate);
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