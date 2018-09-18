<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */
require_once(MO_LIB_DIR . '/DBAction.class.php');
require_once(MO_LIB_DIR . '/ShowPager.class.php');
require_once(MO_LIB_DIR . '/Tools.class.php');

class rechargeAction extends Action {

    public function getDefaultView() {
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
		$user_id = addslashes(trim($request->getParameter('user_id'))); // 用户id
        $pageto = $request->getParameter('pageto'); // 导出
        $pagesize = $request->getParameter('pagesize'); // 每页显示多少条数据
        $page = $request->getParameter('page'); // 页码
        
		$condition = 'a.type = 1';
		if($user_id != ''){
			$condition .= " and a.user_id = '$user_id' ";
		}
        $sql = "select a.*,b.user_name from lkt_record as a LEFT JOIN lkt_user as b ON a.user_id = b.user_id where $condition";
        $r = $db->select($sql);
        $total = count($r);
        $pager = new ShowPager($total,$pagesize,$page);
		$offset = $pager->offset;
       
        if($pageto == 'all'){ // 导出全部
            $sql = "select a.*,b.user_name from lkt_record as a LEFT JOIN lkt_user as b ON a.user_id = b.user_id where $condition order by a.id desc ";
            $list = $db->select($sql);
        }else if($pageto == 'ne'){ // 导出本页
            $sql = "select t1.*,t2.user_name from (select * from lkt_record a where $condition order by a.id desc limit $offset,$pagesize) t1, lkt_user t2 where t1.user_id = t2.user_id ";
            $list = $db->select($sql);
        }else{ // 不导出
            // 根据用户id,查询充值记录和用户昵称
            $sql = "select a.*,b.user_name from lkt_record as a LEFT JOIN lkt_user as b ON a.user_id = b.user_id where $condition";
            $list = $db->select($sql);
        }

		$request->setAttribute("user_id",$user_id);
        $request->setAttribute("list",$list);
        $request->setAttribute('pageto',$pageto);
        $request->setAttribute('page',$page);
        return View :: INPUT;
    }

    public function execute() {

    }

    public function getRequestMethods(){
        return Request :: NONE;
    }

}

?>