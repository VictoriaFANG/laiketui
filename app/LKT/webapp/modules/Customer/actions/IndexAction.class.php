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

        $name = addslashes(trim($request->getParameter('name'))); // 姓名

        $startdate = $request->getParameter('startdate'); // 开始时间

        $enddate = $request->getParameter('enddate'); // 结束日期

        // 查询所有

        $sql = "select * from lkt_customer";

        $r = $db->select($sql);

        $time = date("Y-m-d H:i:s"); // 当前时间

        foreach ($r as $k => $v) {

            $asd['id'] = $v->id;

            $asd['end_date'] = $v->end_date; // 到期时间

            if($asd['end_date'] < $time){ // 到期时间小于当前时间

                $sql = "update lkt_customer set status = 1 where id = " . $asd['id'];

                $rr = $db->update($sql);

            }

        }



        $condition = ' 1 = 1';

        if($name != ''){

            $condition .= " and name like '%$name%'";

        }

        if($startdate != ''){ // 查询开始日期不为空

            $condition .= " and add_date >= '$startdate 00:00:00' ";

        }

        if($enddate != ''){ // 查询结束日期不为空

            $condition .= " and add_date <= '$enddate 23:59:59' ";

        }

        $sql = "select * from lkt_config where id = '1'";
        $r = $db->select($sql);
        $uploadImg_domain=$r[0]->uploadImg_domain;
        $http = substr($uploadImg_domain,0,strrpos($uploadImg_domain,'/'));
        $sql = "select * from lkt_customer where $condition";
        $r = $db->select($sql);
        $new = [];
        foreach ($r as $key => $value) {
            $value->url = $http.'/'.md5($value->email);
            $new[$key] = $value;
        }
        $request->setAttribute("startdate",$startdate);

        $request->setAttribute("enddate",$enddate);

        $request->setAttribute("name",$name);

        $request->setAttribute("list",$new);



        return View :: INPUT;

    }



    public function execute() {



    }



    public function getRequestMethods(){

        return Request :: NONE;

    }

}



?>