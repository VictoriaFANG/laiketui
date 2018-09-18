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

        $id = intval($request->getParameter("id")); // 新闻id

        $uploadImg = addslashes(trim($request->getParameter('uploadImg'))); // 图片上传位置

        // 根据新闻id，查询新闻新闻信息

        $sql = "select * from lkt_customer where id = '$id'";

        $r = $db->select($sql);

        if($r){
            $customer = $r[0];
        }else{
            $customer = [];
        }

        $request->setAttribute("customer",$customer);

        $request->setAttribute('id', $id);

        $request->setAttribute('uploadImg', $uploadImg);



        return View :: INPUT;

	}


  public function execute() {
    $db = DBAction::getInstance();
    $request = $this->getContext()->getRequest();
    // $endtime = $request->getParameter('endtime'). ' 23:59:59'; // 结束时间
    $endtime1 = $request->getParameter('endtime');
    $endtime = strstr ( $endtime1 ,  ' ' ,  true );

    if(!$endtime){
      $endtime = $request->getParameter('endtime'). ' 23:59:59'; // 结束时间
    }

    $name= addslashes($request->getParameter('name'));
    $company= addslashes($request->getParameter('company'));
    $user_num= addslashes($request->getParameter('user_num'));
    $phone= addslashes($request->getParameter('phone'));
    $product_type= addslashes($request->getParameter('product_type'));
    $price= addslashes($request->getParameter('price'));
    $email= addslashes($request->getParameter('email'));
    $status = $request->getParameter('status');
    $id = $request->getParameter('id');
    $time = date("Y-m-d H:i:s");

    if(empty($endtime) || empty($name) || empty($company) || empty($user_num) || empty($phone) || empty($product_type) || empty($price) || empty($email)){
      header("Content-type:text/html;charset=utf-8");
      echo "<script type='text/javascript'>" .
          "alert('请完善用户信息！');" .
          "location.href='index.php?module=Customer&action=add';</script>";
      return $this->getDefaultView();
      exit;     
    }

    if(preg_match("/^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\\d{8}$/", $phone)){
        if($endtime < $time){
          header("Content-type:text/html;charset=utf-8");
          echo "<script type='text/javascript'>" .
              "alert('到期时间不正确！');" .
              "location.href='index.php?module=Customer&action=add';</script>";
          return $this->getDefaultView();
          exit;  
        }
        $ssql = "select 1 from lkt_customer where (email = '$email' OR name ='$name' OR user_id = '$user_num') and id <> '$id'";
        // $sql = "select 1 from lkt_news_list where news_title = '$news_title' ";
        $sres = $db->select($ssql);
        if(!empty($sres)){
            header("Content-type:text/html;charset=utf-8");
            echo "<script type='text/javascript'>" .
                "alert('信息重复,请修改对应信息！');" .
                "location.href='index.php?module=Customer';</script>";
            return $this->getDefaultView(); 
            exit;
        }

        // // 活动开始时间大于当前时间,活动还没开始
        // $sql = "INSERT INTO lkt_customer ( `user_id`, `name`, `mobile`, `price`, `company`, `function`, `add_date`, `end_date`, `status`, `email`) VALUES ('$user_num','$name','$phone','$price','$company','$product_type',CURRENT_TIMESTAMP,'$endtime','$status','$email')";
        // $rr = $db->insert($sql);

        $sql = "update lkt_customer set user_id = '$user_num',name = '$name', mobile = '$phone', price = '$price' , company = '$company', function = '$product_type' , end_date = '$endtime', status = '$status' where id = '$id'";
        // echo $sql;exit;
        $r = $db->update($sql);


        if($r == -1 ){
          header("Content-type:text/html;charset=utf-8");
          echo "<script type='text/javascript'>" .
              "alert('未知原因，用户修改失败！');" .
              "location.href='index.php?module=Customer';</script>";
          return $this->getDefaultView();
        }else{

            header("Content-type:text/html;charset=utf-8");
            echo "<script type='text/javascript'>" .
                "alert('用户修改成功！');" .
                "location.href='index.php?module=Customer';</script>";
            return $this->getDefaultView();

        }

    }else{
      header("Content-type:text/html;charset=utf-8");
      echo "<script type='text/javascript'>" .
          "alert('手机号码格式不正确！');" .
          "location.href='index.php?module=Customer&action=add';</script>";
      return $this->getDefaultView();
      exit;       
    }

  }



	public function getRequestMethods(){

		return Request :: POST;

	}



}



?>