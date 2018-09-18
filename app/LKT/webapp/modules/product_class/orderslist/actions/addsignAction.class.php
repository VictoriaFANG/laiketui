<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */
require_once(MO_LIB_DIR . '/DBAction.class.php');
require_once(MO_LIB_DIR . '/ShowPager.class.php');
require_once(MO_LIB_DIR . '/Tools.class.php');

class addsignAction extends Action {

    public function getDefaultView() {
        $db = DBAction::getInstance();
       $request = $this->getContext()->getRequest();

       $id = $request -> getParameter('id'); //运费
       $sql02 = "select * from lkt_express ";
       $r02 =$db->select($sql02);
       $request -> setAttribute("express",$r02);
       $request -> setAttribute("id",$id);

        return View :: INPUT;
    }

    public function execute() {
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest(); 
        $sNo = trim($request -> getParameter('sNo'));
        $trade = intval($request -> getParameter('trade'))-1;
        $express_id = $request -> getParameter('express');//快递公司id
        $courier_num = $request -> getParameter('courier_num');//快递单号
        $freight = $request -> getParameter('freight'); //运费
        $time = date('Y-m-d h:i:s',time());
        // print_r($express_id);die;

        if(!empty($sNo)&&!empty($trade)){
    
          $sql01 = "select * from lkt_order where sNo = $sNo ";
            $r01 =$db->select($sql01);
            
            // $data['status01'] = $r01[0]->status;//根据订单号查询该订单的状态
        }

                 $con =" ";
                  if(!empty($express_id)){
                    $con = ",express_id='$express_id'" ;
                  }
                  if(!empty($courier_num )){
                    $con .= ",courier_num ='$courier_num '" ;
                  }
                  if(!empty($freight)){
                    $con .= ",freight=' $freight '" ;
                  }
                    $con .= ",deliver_time= ' $time '" ;
                  // print_r($con);die;
                  $sqll = 'update lkt_order set status='.$trade.' where sNo="'.$sNo.'"';

                  $rl = $db -> update($sqll);
                  $sqld = 'update lkt_order_details set r_status='.$trade.$con.'  where r_sNo="'.$sNo.'"';
                  // print_r($sqld);die;
                  $rd = $db -> update($sqld);
                  if($rl>0 && $rd>0){
                      echo 1;exit();
                  }

       return View :: INPUT;
    }

    public function getRequestMethods(){
        return Request :: POST;
    }

}

?>