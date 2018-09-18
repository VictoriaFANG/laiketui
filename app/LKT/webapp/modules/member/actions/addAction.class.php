<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */

require_once(MO_LIB_DIR . '/DBAction.class.php');



class addAction extends Action {



	public function getDefaultView() {



		return View :: INPUT;

	}



	public function execute(){

		$db = DBAction::getInstance();

		$request = $this->getContext()->getRequest();

        // 接收数据 

        $name = addslashes(trim($request->getParameter('name'))); 

        $password = addslashes(trim($request->getParameter('password')));



        //检查是否重复

        $s = "select * from lkt_admin where name = '$name'";

        $sr = $db->insert($s);

        if($sr && count($sr) > 0){



            header("Content-type:text/html;charset=utf-8");

            echo "<script type='text/javascript'>" .

                "alert('用户名已经存在！');" .

                "</script>";

            return $this->getDefaultView();



        }else{



            $sql = "insert into lkt_admin(name,password,add_date)values('$name','$password',CURRENT_TIMESTAMP)";

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

                    "location.href='index.php?module=member';</script>";

                return $this->getDefaultView();

            }



        }



	    return;

	}



	public function getRequestMethods(){

		return Request :: POST;

	}



}



?>