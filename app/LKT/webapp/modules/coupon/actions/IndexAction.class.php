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

        $activity_type = addslashes(trim($request->getParameter('activity_type'))); // 活动类型
        $software_id = addslashes(trim($request->getParameter('software_id'))); // 软件id
        $name = addslashes(trim($request->getParameter('name'))); // 标题

        $sql = "select * from lkt_coupon_config where id = '1'";
        $r_1 = $db->select($sql);
        $activity_overdue = $r_1[0]->activity_overdue; // 活动过期删除时间

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

        $condition = ' 1=1 ';
        if($activity_type != '' && $activity_type != 0){   
            $condition .= " and activity_type = '$activity_type'";

        }
        if($software_id != '' && $software_id != 0){
            $condition .= " and software_id = '$software_id'";
        }
        if($name != ''){
            $condition .= " and name like '%$name%'";
        }
        $sql = "select * from lkt_coupon_activity where $condition";
        $r = $db->select($sql);
        
        $time = date('Y-m-d H:i:s'); // 当前时间
        if($r){
            foreach ($r as $k => $v) {
                $id = $v->id; // 活动id
                $software_id = $v->software_id; // 软件id
                $activity_type = $v->activity_type; // 活动类型

                $typestr=trim($software_id,','); // 移除两侧的逗号
                $typeArr=explode(',',$typestr); // 字符串打散为数组
                $sql = "select name from lkt_software where id = $typeArr[0]";
                $rr_1 = $db->select($sql);
                $v->software_name = $rr_1[0]->name;
                if($activity_type == 1){
                    $v->activity_type = '注册';
                }else if($activity_type == 2){
                    $v->activity_type = '节日/活动';
                }else if($activity_type == 3){
                    $v->activity_type = '满减';
                }
                $time_1 = date("Y-m-d H:i:s",strtotime("+$activity_overdue day",strtotime($v->end_time))); // 活动过期删除时间
                // 当前时间大于活动结束时间
                if($v->end_time < $time){
                    // 根据id,修改活动状态
                    $sql = "update lkt_coupon_activity set status = 3 where id = '$id'";
                    $db->update($sql);
                    $v->status = 3;
                }
                // 当前时间大于活动过期删除时间,删除这条数据
                if($time_1 < $time){
                    $sql = "delete from lkt_coupon_activity where id = '$id' ";
                    $db->delete($sql);
                }
            }
        }
        $request->setAttribute("name",$name);
        $request->setAttribute("list",$r);
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