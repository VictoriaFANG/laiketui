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

        $id = $request->getParameter("id");

        // 根据id查询

        $sql = "select * from lkt_admin where name = '$id'";

        $r = $db->select($sql);

        if($r){

            $name = $r[0]->name; 

            $password = $r[0]->password;

        }



        $request->setAttribute('id', $id);

        $request->setAttribute('name', $name );

        $request->setAttribute('password', $password );

        $request->setAttribute('permission',unserialize($r[0]->permission));

        return View :: INPUT;

	}



	public function execute(){

		$db = DBAction::getInstance();

		$request = $this->getContext()->getRequest();

        // 接收数据 

        $id = $request->getParameter("id");

        $name = addslashes(trim($request->getParameter('name'))); 

        $password = md5(addslashes(trim($request->getParameter('password'))));



        $permissions = serialize(($request->getParameter('permission')));



		$setsql=" set name='$name',permission='$permissions',password = '$password' ";



		//更新数据表

		$sql = "update lkt_admin $setsql where name ='$id'";

		$r = $db->update($sql);



		if($r == -1) {

		echo "<script type='text/javascript'>" .

				"alert('未知原因，修改失败！');" .

				"location.href='index.php?module=member';</script>";

			return $this->getDefaultView();

		} else {

			header("Content-type:text/html;charset=utf-8");

			echo "<script type='text/javascript'>" .

				"alert('修改成功！');" .

				"location.href='index.php?module=member';</script>";

		}

		return;

	}



	public function getRequestMethods(){

		return Request :: POST;

	}



}



?>