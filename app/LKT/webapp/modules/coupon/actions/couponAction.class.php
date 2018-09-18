<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */
require_once(MO_LIB_DIR . '/DBAction.class.php');
require_once(MO_LIB_DIR . '/ShowPager.class.php');
require_once(MO_LIB_DIR . '/Tools.class.php');

class couponAction extends Action {
    public function getDefaultView() {
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $sql = "select * from lkt_coupon_config where id = '1'";
        $r_1 = $db->select($sql);
        $activity_overdue = $r_1[0]->activity_overdue; // 活动过期删除时间

        $name = addslashes(trim($request->getParameter('name'))); // 用户id
        $software_id = addslashes(trim($request->getParameter('software_id'))); // 软件id

        $sql = "select id,name from lkt_software order by id desc";
        $rr = $db->select($sql);
        if($rr){
            $rew = '<option value="0" >全部(软件名)</option>';
            $arr = json_decode(json_encode($rr),true);
            $new_arr = array();
            foreach($arr as $k => $v){
                if(array_key_exists($v['name'],$new_arr)){
                    $new_arr[$v['name']] = $new_arr[$v['name']].','.$v['id']; 
                }else{
                    $new_arr[$v['name']] = $v['id'];
                }
            }
            foreach ($new_arr as $key => $value) {
                $arr_list['id'] = $value;
                $arr_list['name'] = $key;
                $rew .= "<option  value='".$arr_list['id']."'>".$arr_list['name']."</option>";
            }  
        }

        $condition = '1 = 1';
        if($name != ''){   
            $condition .= " and b.name like '%$name%'";
        }
        if($software_id != '' && $software_id != 0){
            $condition .= " and a.software_id = '$software_id'";
        }
        $time = date('Y-m-d H:i:s'); // 当前时间

        $sql = "select a.*,b.name from lkt_coupon as a LEFT JOIN lkt_coupon_activity as b ON a.hid = b.id where $condition";
        $r = $db->select($sql); 
        if($r){
            foreach ($r as $k => $v) {
                $id = $v->id; // 优惠券id
                $hid = $v->hid; // 活动id
                $software_id = $v->software_id; // 软件id
                $expiry_time = $v->expiry_time; // 到期时间

                $sql = "select * from lkt_coupon_config where id = 1";
                $rr = $db->select($sql);
                $coupon_overdue = $rr[0]->coupon_overdue; // 优惠券过期删除时间
                $time_1 = date("Y-m-d H:i:s",strtotime("+$coupon_overdue day",strtotime($expiry_time))); // 优惠券过期删除时间

                $typestr=trim($software_id,','); // 移除两侧的逗号
                $typeArr=explode(',',$typestr); // 字符串打散为数组
                $sql = "select name from lkt_software where id = $typeArr[0]";
                $rr_1 = $db->select($sql);
                $v->software_name = $rr_1[0]->name;

                // 当前时间大于活动结束时间,优惠券已过期
                if($time > $expiry_time){
                    $sql = "update lkt_coupon set status = 3 where id = '$id' ";
                    $db->update($sql);
                    $v->status = 3;
                }
                // 当前时间大于优惠券过期删除时间,就删除这条数据
                if($time_1 < $time){
                    $sql = "delete from lkt_coupon where id = '$id' ";
                    $db->delete($sql);
                }

                if($v->name){
                    $v->name = $v->name; // 活动名称
                }else{
                    // 查询配置信息
                    $sql = "select * from lkt_config where id = 1 ";
                    $rrr = $db->select($sql);
                    $v->name = $rrr[0]->company; // 公司名称
                }
            }
        }
        $request->setAttribute("list",$r);
        $request->setAttribute("name",$name);
        $request->setAttribute("software",$rew);

        return View :: INPUT;
    }

    public function execute() {

    }

    public function getRequestMethods(){
        return Request :: NONE;
    }

}

?>