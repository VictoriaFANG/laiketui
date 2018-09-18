<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */

require_once(MO_LIB_DIR . '/DBAction.class.php');



class addproductAction extends Action {

    



    public function getDefaultView() {

      $db = DBAction::getInstance();

      $request = $this->getContext()->getRequest();

      $arr =[];

      $sql_c = 'select cid,pname from lkt_product_class where sid=0 order by sort ';

        $r_c = $db->select($sql_c);

        

        foreach ($r_c as $key => $value) {

            $sql_e = "select id,product_title,imgurl,product_class from lkt_product_list where product_class like '-$value->cid%'";

            $r_e = $db->select($sql_e);

            foreach ($r_e as $k => $v) {

               $arr[] = $v;

            }

            // 查询系统参数

        $sql1 = "select * from lkt_config where id = 1";

        $r_1 = $db->select($sql1);

        $uploadImg_domain = $r_1[0]->uploadImg_domain; // 图片上传域名

        $uploadImg = $r_1[0]->uploadImg; // 图片上传位置

        if(strpos($uploadImg,'../') === false){ // 判断字符串是否存在 ../

            $img = $uploadImg_domain . $uploadImg; // 图片路径

        }else{ // 不存在

            $img = $uploadImg_domain . substr($uploadImg,2); // 图片路径

        }

            foreach ($arr as $ke => $ve) {

               if(substr($ve -> product_class,1,1) == $value -> cid){

                 $arr[$ke] -> pname = $value -> pname;

               }

               $arr[$ke] -> image = $img.$ve -> imgurl;

            }

        }

        if(isset($_GET['groupname'])){

            $this -> addgroup();

        }



        $request->setAttribute("arr",$arr);

        return View :: INPUT;

    }



    public function execute() {

       $db = DBAction::getInstance();

       $request = $this->getContext()->getRequest();

       

       



    }



    public function addgroup(){

       $db = DBAction::getInstance();

       $request = $this->getContext()->getRequest();

       unset($_GET['module']);

       unset($_GET['action']);

       $set = $_GET;

       if(isset($set['starttime'])) $set['starttime'] = strtotime($set['starttime']);

       if(isset($set['radio']) && $set['radio'] == 1){

           $set['endtime'] = strtotime('+1year');

       }else if($set['radio'] == 2 && isset($set['endtime'])){

           $set['endtime'] = strtotime($set['endtime']);

       }

       

       $request->setAttribute("set",$set);

       

    }



    public function getRequestMethods(){

        return Request :: POST;

    }



}



?>