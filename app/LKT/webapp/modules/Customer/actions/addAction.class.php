<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */
/**
 * [Laike System] Copyright (c) 2018 laiketui.com
 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.
 */
require_once(MO_LIB_DIR . '/DBAction.class.php');
require_once(MO_LIB_DIR . '/ShowPager.class.php');
require_once(MO_LIB_DIR . '/Tools.class.php');

class addAction extends Action {

  public function getDefaultView() {
    $db = DBAction::getInstance();
    $request = $this->getContext()->getRequest();
    $sql = "select * from lkt_config where id = '1'";
    $r = $db->select($sql);
    $uploadImg = $r[0]->uploadImg; // 图片上传位置
    $sql = "select * from lkt_software where 1=1 group by name order by id desc";
    $r = $db->select($sql);
    $ops = '';
    if($r){
        foreach ($r as $key => $value) {
          $edition = $value->name;
          $ops .= " <option value='$edition'>$edition</option>";
        }
    }
    $request->setAttribute("ops",$ops);
    $request->setAttribute("uploadImg",$uploadImg);
    return View :: INPUT;
  }

  public function execute() {
    $db = DBAction::getInstance();
    $request = $this->getContext()->getRequest();
    $endtime = $request->getParameter('endtime'). ' 23:59:59'; // 结束时间
    $name= addslashes($request->getParameter('name'));
    $company= addslashes($request->getParameter('company'));
    $user_num= addslashes($request->getParameter('user_num'));
    $phone= addslashes($request->getParameter('phone'));
    $product_type= addslashes($request->getParameter('product_type'));
    $price= addslashes($request->getParameter('price'));
    $email= addslashes($request->getParameter('email'));
    $status = $request->getParameter('status');
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
        $ssql = "select * from lkt_customer where (email = '$email' OR name ='$name' OR user_id = '$user_num')";
        $sres = $db->select($ssql);
        if(!empty($sres)){
            header("Content-type:text/html;charset=utf-8");
            echo "<script type='text/javascript'>" .
                "alert('信息重复,请修改对应信息！');" .
                "location.href='index.php?module=Customer';</script>";
            return $this->getDefaultView(); 
            exit;
        }

        // 活动开始时间大于当前时间,活动还没开始
        $sql = "INSERT INTO lkt_customer ( `user_id`, `name`, `mobile`, `price`, `company`, `function`, `add_date`, `end_date`, `status`, `email`) VALUES ('$user_num','$name','$phone','$price','$company','$product_type',CURRENT_TIMESTAMP,'$endtime','$status','$email')";
        $rr = $db->insert($sql);

        if($rr == -1 ){
          header("Content-type:text/html;charset=utf-8");
          echo "<script type='text/javascript'>" .
              "alert('未知原因，用户添加失败！');" .
              "location.href='index.php?module=Customer';</script>";
          return $this->getDefaultView();
        }else{

        $dest = '../../'.md5($email);
        $source = '../LKT/zip';
        $this->mk_dir($dest);
        $source1 = '/b1908fcd980d7976f7c574300675ae8d.zip';
        $source2 = '/index.php';
        $result = intval(@copy($source.$source1,$dest.$source1));
        $result2 = intval(@copy($source.$source2,$dest.$source2));
        header("Content-type:text/html;charset=utf-8");
        echo "<script type='text/javascript'>" .
            "alert('用户添加成功！');" .
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
  /**
   * 创建目录
   *
   * @param string $dir
   * @param int $mode
   * @return bool
   */
  function mk_dir($dir, $mode = 0777){
    if (!$dir) return false;
    if (is_dir($dir) || @mkdir($dir, $mode)){
      return true;
    }
    if (!mk_dir(dirname($dir), $mode)){
      return false;
    }
    return @mkdir($dir, $mode);
  }

}

?>