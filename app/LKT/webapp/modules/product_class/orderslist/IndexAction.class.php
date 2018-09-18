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
      $pageto = $request->getParameter('pageto'); // 导出
        $pagesize = $request->getParameter('pagesize'); // 每页显示多少条数据
        $page = $request->getParameter('page'); // 页码

      $data = array('未付款','未发货','已发货','待评论','退货','已签收');
      $status = isset($_GET['status']) && $_GET['status'] !== ''?$_GET['status']:false;
     
      $sNo = isset($_GET['sNo']) && $_GET['sNo'] !== ''?$_GET['sNo']:false;
      if($status !== false) $status = intval($status);
      
      $class = '';
      
      foreach ($data as $k => $v) {
        if($status === false){
            $class .= '<option value="'.$k.'">'.$v.'</option>';
        }else{
          if($status === $k){
            $class .= '<option selected="selected" value="'.$k.'">'.$v.'</option>';
          }else{
            $class .= '<option value="'.$k.'">'.$v.'</option>';
          }
        }
      }
      
      $sql1 = 'select id,sNo,name,sheng,shi,xian,address,mobile,z_price,status,drawid from lkt_order';
      
      $condition = ' where 1=1';
      if($status !== false && $sNo == false){
        $condition .= " and status=$status";
        $sql1 .= $condition;
      }

      if($sNo !== false && $status == false){
        $condition .= ' and (`sNo` like "%'.$sNo.'%"  or `name` like "%'.$sNo.'%" or `mobile` like "%'.$sNo.'%")';
        $sql1 .= $condition;
       }

      if($status !== false && $sNo !== false){
        $sql1 = 'select id,sNo,name,sheng,shi,xian,address,mobile,z_price,status from lkt_order where status="'.$status.'" and (`sNo` like "%'.$sNo.'" or `name` like "%'.$sNo.'%" or `mobile` like "%'.$sNo.'%")';
      }
      
      $res1 = $db -> select($sql1);
      $total = count($res1);
      $pager = new ShowPager($total,$pagesize,$page);
      $offset = $pager->offset;
// print_r($offset);die;
unset($condition);
      if($pageto == 'ne'){// 导出本页
          $sql = 'select id,sNo,name,sheng,shi,xian,address,mobile,z_price,status,drawid from lkt_order';
         $condition = ' where 1=1';
        if($status !== false && $sNo == false){
          $condition .= " and status = $status order by id asc limit $offset,$pagesize";
          $sql .= $condition;
        }elseif($sNo !== false && $status == false){
          $condition .= ' and (`sNo` like "%'.$sNo.'%"  or `name` like "%'.$sNo.'%" or `mobile` like "%'.$sNo.'%") order by id limit $offset,$pagesize';
          $sql .= $condition;
         }elseif($status !== false && $sNo !== false){
          $sql = 'select id,sNo,name,sheng,shi,xian,address,mobile,z_price,status from lkt_order where status="'.$status.'" and (`sNo` like "%'.$sNo.'" or `name` like "%'.$sNo.'%" or `mobile` like "%'.$sNo.'%")  order by id asc limit $offset,$pagesize';
        }else{
          // print_r($offset);print_r($pagesize);die;
         $condition .= ' order by id asc limit '.$offset.",".$pagesize;
          $sql .= $condition;
        }
        // print_r($sql);die;
        $res = $db -> select($sql);
      }else{
        $res = $res1;
      }


      foreach ($res as $key => $value) {
        if($value->status ==0){
          $res[$key]->status01 ='未付款'  ;
        }elseif ($value->status ==1) {
          $res[$key]->status01 ='未发货';
        }elseif ($value->status ==2) {
          $res[$key]->status01 ='已发货';
        }elseif ($value->status ==3) {
          $res[$key]->status01 ='待评论';
        }elseif ($value->status ==4) {
          $res[$key]->status01 ='退货';
        }elseif ($value->status ==6) {
          $res[$key]->status01 ='订单关闭';
        }else{
          $res[$key]->status01 ='已签收';
        }
      }

      $request -> setAttribute("class",$class);
      $request -> setAttribute("order",$res);
      $request -> setAttribute("sNo",$sNo);
      $request -> setAttribute("status",$status);
      $request->setAttribute('pageto',$pageto);
      
      return View :: INPUT;
    }

    public function execute() {
        
    }

    public function getRequestMethods(){
        return Request :: NONE;
    }

}

?>