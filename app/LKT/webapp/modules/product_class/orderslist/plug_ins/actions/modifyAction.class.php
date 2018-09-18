<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */

require_once(MO_LIB_DIR . '/DBAction.class.php');



class modifyAction extends Action {



	public function getDefaultView() {

        $db = DBAction::getInstance();

        $request = $this->getContext()->getRequest();

        // 接收信息

        $id = intval($request->getParameter("id")); // 插件id

        $uploadImg = addslashes(trim($request->getParameter('uploadImg'))); // 图片上传位置

        $http = addslashes(trim($request->getParameter('http'))); // 图片上传位置

        $http = "index.php?module=$http&action=config";

        // 根据插件id，查询插件信息

        $sql = "select * from lkt_plug_ins where id = '$id'";

        $r = $db->select($sql);

        if($r){

            $name = $r[0]->name; // 插件名称

            $image = $r[0]->image; // 轮播图

            $url = $r[0]->url ; // 链接

        }

        if($url == ''){

            $url = '#';

        }

        $request->setAttribute('id', $id);

        $request->setAttribute('uploadImg', $uploadImg);

        $request->setAttribute('name', $name);

        $request->setAttribute("image",$image);

        $request->setAttribute('url', $url);

        $request->setAttribute('http', $http);



        return View :: INPUT;

	}



	public function execute(){

		$db = DBAction::getInstance();

		$request = $this->getContext()->getRequest();

        // 接收信息

		$id = intval($request->getParameter('id'));

        $uploadImg = addslashes(trim($request->getParameter('uploadImg'))); // 图片上传位置

        $name = addslashes(trim($request->getParameter('name'))); // 插件名称

        $image = addslashes($request->getParameter('image')); // 新插件图标

        $oldpic = addslashes($request->getParameter('oldpic')); // 原插件图标

        $url = addslashes(trim($request->getParameter('url'))); // 链接

      

        if($image){

            $image = preg_replace('/.*\//','',$image);

            if($image != $oldpic){

                @unlink ($uploadImg.$oldpic);

            }

        }else{

            $image = $oldpic;

        }

        

        // 根据插件名称查询插件表

        $sql = "select * from lkt_plug_ins where name = '$name' and id != '$id' ";

        $r = $db->select($sql);

        if($r){

            header("Content-type:text/html;charset=utf-8");

            echo "<script type='text/javascript'>" .

                "alert('插件".$name."已存在!');" .

                "</script>";

            return $this->getDefaultView();

        }



		//更新数据表

		$sql = "update lkt_plug_ins " .

			"set image = '$image',url = '$url', name = '$name',add_time = CURRENT_TIMESTAMP "

			."where id = '$id'";

		$r = $db->update($sql);



		if($r == -1) {

		echo "<script type='text/javascript'>" .

				"alert('未知原因，新闻修改失败！');" .

				"location.href='index.php?module=plug_ins';</script>";

			return $this->getDefaultView();

		} else {

			header("Content-type:text/html;charset=utf-8");

			echo "<script type='text/javascript'>" .

				"alert('新闻修改成功！');" .

				"location.href='index.php?module=plug_ins';</script>";

		}

		return;

	}



	public function getRequestMethods(){

		return Request :: POST;

	}



}



?>