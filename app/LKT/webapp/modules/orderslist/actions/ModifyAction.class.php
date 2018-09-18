<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */

require_once(MO_LIB_DIR . '/DBAction.class.php');



class ModifyAction extends Action {



	public function getDefaultView() {

       $db = DBAction::getInstance();

	   $request = $this->getContext()->getRequest();

	   $sNo = addslashes(trim($request->getParameter('sNo')));

       

	   $sql = 'select id,sNo,name,mobile,sheng,shi,xian,address from lkt_order where sNo="'.$sNo.'"';

	   $res = $db -> selectarray($sql);

	   $data = array();

       if(!empty($res)) list($data) = $res;

       //var_dump($data);



       $request -> setAttribute("class",$data);

       return View :: INPUT;

	}



	public function execute(){

	   $db = DBAction::getInstance();

	   $request = $this->getContext()->getRequest();



	   $name = addslashes(trim($request->getParameter('name')));

	   $mobile = addslashes(trim($request->getParameter('mobile')));

	   $sheng = addslashes(trim($request->getParameter('Select1')));

	   $shi = addslashes(trim($request->getParameter('Select2')));

	   $xian = addslashes(trim($request->getParameter('Select3')));

	   $address = addslashes(trim($request->getParameter('address')));

	   $r1 = $db -> selectarray('select G_CName from admin_cg_group where GroupID='.$sheng);

	   $r1 = $r1[0]['G_CName'];

	   $r2 = $db -> selectarray('select G_CName from admin_cg_group where GroupID='.$shi);

	   $r2 = $r2[0]['G_CName'];

	   $r3 = $db -> selectarray('select G_CName from admin_cg_group where GroupID='.$xian);

	   $r3 = $r3[0]['G_CName'];

	   

	   

	   $address = $r1.$r2.$r3.$address;

	   $sNo = addslashes(trim($request->getParameter('id')));

       $sid = addslashes(trim($request->getParameter('sid')));

       

	   $sql = 'update lkt_order set name="'.$name.'",mobile="'.$mobile.'",sheng="'.$sheng.'",shi="'.$shi.'",xian="'.$xian.'",address="'.$address.'" where sNo="'.$sNo.'"';	   

	   $up = $db -> update($sql);

	   

	   if($up > 0){

	   	   header("Content-type:text/html;charset=utf-8");

           echo "<script type='text/javascript'>" .

                "alert('修改成功！');history.go(-2);window.location.reload();" .

                "</script>";

	   }else{

           header("Content-type:text/html;charset=utf-8");

           echo "<script type='text/javascript'>" .

                "alert('修改失败！');history.go(-1);" .

                "</script>";

	   }

	   

	}



	public function getRequestMethods(){

		return Request :: POST;

	}



}



?>