<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */

require_once(MO_LIB_DIR . '/DBAction.class.php');



class addAction extends Action {



	public function getDefaultView() {

        $db = DBAction::getInstance();

        $request = $this->getContext()->getRequest();



		return View :: INPUT;

	}



	public function execute(){

		$db = DBAction::getInstance();

		$request = $this->getContext()->getRequest();

        // 接收数据 

        $name = addslashes(trim($request->getParameter('name'))); // 插件名称

        $image = addslashes(trim($request->getParameter('image'))); // 插件图片

        $url = addslashes(trim($request->getParameter('url'))); // 链接



        if($image){

            $image = preg_replace('/.*\//','',$image);

        }

        // 根据插件名称查询插件表

        $sql = "select * from lkt_plug_ins where name = '$name' ";

        $r = $db->select($sql);

        if($r){

            header("Content-type:text/html;charset=utf-8");

            echo "<script type='text/javascript'>" .

                "alert('插件".$name."已存在!');" .

                "</script>";

            return $this->getDefaultView();

        }



        // 添加插件

        $sql = "insert into lkt_plug_ins(name,image,url,add_time,type) " .

            "values('$name','$image','$url',CURRENT_TIMESTAMP,0)";

        $r = $db->insert($sql);

        if($r == -1){

            header("Content-type:text/html;charset=utf-8");

            echo "<script type='text/javascript'>" .

                "alert('未知原因，添加失败！');" .

                "</script>";

            return $this->getDefaultView();

        }else{

            header("Content-type:text/html;charset=utf-8");

            echo "<script type='text/javascript'>" .

                "alert('添加成功！');" .

                "location.href='index.php?module=plug_ins';</script>";

            return $this->getDefaultView();

        }

	    return;

	}



	public function getRequestMethods(){

		return Request :: POST;

	}



}



?>