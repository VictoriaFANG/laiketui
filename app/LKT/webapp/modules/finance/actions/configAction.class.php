<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */
require_once(MO_LIB_DIR . '/DBAction.class.php');
require_once(MO_LIB_DIR . '/ShowPager.class.php');
require_once(MO_LIB_DIR . '/Tools.class.php');

class configAction extends Action {
    public function getDefaultView() {
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $plug_ins_id = intval($request->getParameter("id")); // 插件id
        
        $sql = "select * from lkt_finance_config where plug_ins_id = '$plug_ins_id'";
        $r = $db->select($sql);
        if($r){
            $min_cz = $r[0]->min_cz;
            $min_amount = $r[0]->min_amount;
            $max_amount = $r[0]->max_amount;
            $service_charge = $r[0]->service_charge;
            $unit = $r[0]->unit;
        }else{
            $min_cz = 50;
            $min_amount = 50;
            $max_amount = 100;
            $service_charge = '0.05';
            $unit = '元';
        }
        $request->setAttribute('plug_ins_id', $plug_ins_id);
        $request->setAttribute('min_cz', $min_cz);
        $request->setAttribute('min_amount', $min_amount);
        $request->setAttribute('max_amount', $max_amount);
        $request->setAttribute('service_charge', $service_charge);
        $request->setAttribute('unit', $unit);
        return View :: INPUT;
    }

    public function execute() {
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        // 接收信息
        $plug_ins_id = intval($request->getParameter('plug_ins_id'));
        $min_cz = addslashes(trim($request->getParameter('min_cz'))); // 最小充值金额
        $min_amount = addslashes(trim($request->getParameter('min_amount'))); // 最小提现金额
        $max_amount = addslashes($request->getParameter('max_amount')); // 最大提现金额
        $service_charge = addslashes($request->getParameter('service_charge')); // 手续费
        $unit = addslashes($request->getParameter('unit')); // 单位
        
        if(is_numeric($min_cz) == false){
            echo "<script type='text/javascript'>" .
                "alert('最小充值金额请输入数字！');" .
                "</script>";
            return $this->getDefaultView();
        }else{
            if($min_cz <= 0){
                echo "<script type='text/javascript'>" .
                    "alert('最小充值金额不能小于等于0！');" .
                    "</script>";
                return $this->getDefaultView();
            }
        }

        if(is_numeric($min_amount) == false){
            echo "<script type='text/javascript'>" .
                "alert('最小提现金额请输入数字！');" .
                "</script>";
            return $this->getDefaultView();
        }else{
            if($min_amount <= 0){
                echo "<script type='text/javascript'>" .
                    "alert('最小提现金额不能小于等于0！');" .
                    "</script>";
                return $this->getDefaultView();
            }
        }
        if(is_numeric($max_amount) == false){
            echo "<script type='text/javascript'>" .
                "alert('最大提现金额请输入数字！');" .
                "</script>";
            return $this->getDefaultView();
        }else{
            if($max_amount <= 0){
                echo "<script type='text/javascript'>" .
                    "alert('最大提现金额不能小于等于0！');" .
                    "</script>";
                return $this->getDefaultView();
            }
        } 
        if($min_amount <= $service_charge){
            echo "<script type='text/javascript'>" .
                "alert('最小提现金额不能小于等于手续费！');" .
                "</script>";
                return $this->getDefaultView();
        }else if ($min_amount >= $max_amount) {
            echo "<script type='text/javascript'>" .
                "alert('最小提现金额不能大于等于最大提现金额！');" .
                "</script>";
                return $this->getDefaultView();
        }else{
            $sql = "select * from lkt_finance_config where plug_ins_id = '$plug_ins_id'";
            $r = $db->select($sql);
            if($r){
                $sql = "update lkt_finance_config set min_cz = '$min_cz',min_amount = '$min_amount',max_amount = '$max_amount',service_charge = '$service_charge',unit = '$unit',modify_date = CURRENT_TIMESTAMP where plug_ins_id = '$plug_ins_id'";
                $r_1 = $db->update($sql);
                if($r_1 == -1) {
                echo "<script type='text/javascript'>" .
                        "alert('未知原因，钱包参数修改失败！');" .
                        "location.href='index.php?module=plug_ins';</script>";
                    return $this->getDefaultView();
                } else {
                    header("Content-type:text/html;charset=utf-8");
                    echo "<script type='text/javascript'>" .
                        "alert('钱包参数修改成功！');" .
                        "location.href='index.php?module=plug_ins';</script>";
                }
            }else{
                $sql = "insert into lkt_finance_config(plug_ins_id,min_cz,min_amount,max_amount,service_charge,unit,modify_date) values('$plug_ins_id','$min_cz','$min_amount','$max_amount','$service_charge','$unit',CURRENT_TIMESTAMP)";
                $r_1 = $db->insert($sql);
                if($r_1 == -1) {
                echo "<script type='text/javascript'>" .
                        "alert('未知原因，钱包参数添加失败！');" .
                        "location.href='index.php?module=plug_ins';</script>";
                    return $this->getDefaultView();
                } else {
                    header("Content-type:text/html;charset=utf-8");
                    echo "<script type='text/javascript'>" .
                        "alert('钱包参数添加成功！');" .
                        "location.href='index.php?module=plug_ins';</script>";
                }
            }
        }
        
        return;

    }

    public function getRequestMethods(){
        return Request :: POST;
    }

}

?>