<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */
require_once(MO_LIB_DIR . '/DBAction.class.php');
require_once(MO_LIB_DIR . '/ShowPager.class.php');
require_once(MO_LIB_DIR . '/Tools.class.php');

class CouponAction extends Action {
    /*
    时间2018年03月26日
    修改内容：优惠券
    修改人：段宏波
    主要功能：处理小程序首页请求结果
    公司：湖南壹拾捌号网络技术有限公司
     */
    public function getDefaultView() {
        return ;
    }

    public function execute(){
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $m = addslashes(trim($request->getParameter('m')));
        if($m == 'index'){
            $this->index();
        }else if($m == 'receive'){
            $this->receive();
        }else if($m == 'mycoupon'){
            $this->mycoupon();
        }else if($m == 'my_coupon'){
            $this->my_coupon();
        }else if($m == 'immediate_use'){
            $this->immediate_use();
        }else if($m == 'getvou'){
            $this->getvou();
        }
        return;
    }

    public function getRequestMethods(){
        return Request :: POST;
    }
    // 获取小程序优惠券活动
    public function index(){
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $software_name = trim($request->getParameter('software_name')); // 软件名称
        $edition = trim($request->getParameter('edition')); // 版本号
        $openid = trim($request->getParameter('openid')); // 微信id

        // 根据软件名称，查询软件id和名称
        // $sql = "select id from lkt_software where name = '$software_name' and edition = '$edition' and type = 0";
        // $r_software = $db->select($sql);
        // if($r_software){
        //     $software_id = $r_software[0]->id;
        // }
        $software_id = $software_name;
        // 查询用户id
        $sql = "select user_id,Register_data from lkt_user where wx_id = '$openid'";
        $user = $db->select($sql);
        $user_id = $user[0]->user_id;
        $Register_data = $user[0]->Register_data; // 注册时间

        $start_time_1 = date("Y-m-d H:i:s",mktime(0,0,0,date('m'),date('d'),date('Y'))); // 今天开始时间
        $end_time_1 = date("Y-m-d H:i:s",mktime(0,0,0,date('m'),date('d')+1,date('Y'))-1); // 今天结束时间
        $time = date('Y-m-d H:i:s');  // 当前时间

     
        // 根据活动为开启状态,查询活动列表,根据开始时间降序排列
        $sql = "select * from lkt_coupon_activity where status = 1 and software_id like '%$software_id%' order by start_time desc";
        $r_1 = $db->select($sql);
        $rew_1 = 0;
        $arr = [];
        if($r_1){
            foreach ($r_1 as $k => $v) {
                $rew_1 = $k;
                $activity_id = $v->id; // 活动id
                $activity_type = $v->activity_type; // 活动类型
                $start_time_2 = $v->start_time; // 活动开始时间
                $end_time_2 = $v->end_time; // 活动结束时间
                $z_money = $v->z_money; // 总金额
                $num = $v->num; // 活动金额个数
                $v->start_time = date('Y-m-d',strtotime($v->start_time)); // 活动开始时间
                $v->end_time = date('Y-m-d',strtotime($v->end_time)); // 活动结束时间
                // 判断活动是否过期
                if($end_time_2 <= $time){
                    // 过期,根据活动id修改活动状态
                    $sql = "update lkt_coupon_activity set status = 3 where id = '$activity_id'";
                    $db->update($sql);
                }else{ // 活动没结束
                    if($activity_type == 3){ // 活动为 (满减) 类型
                        $v->point = '正在进行';
                        $v->limit = '无使用门槛'; // 限制
                    }else{
                        if($activity_type == 1){
                            if($start_time_2 < $Register_data && $Register_data < $end_time_2){
                                if($num == ''){
                                    $v->point = '领取';
                                    $v->limit = '新用户领取'; // 限制
                                }else{
                                    if($num == 0 || $z_money < $v->money){
                                        $v->point = '您来晚了';
                                    }else{
                                        $v->point = '领取';
                                    }
                                }
                            }else{
                                $v->point = '新用户领取';
                                $v->limit = '您不是新用户'; // 限制
                            }
                        }else{
                            // 根据用户id,活动id ,查询优惠券表
                            $sql = "select * from lkt_coupon where user_id = '$user_id' and hid = '$activity_id' ";
                            $r_2 = $db->select($sql);
                            if($r_2){ // 有数据
                                $v->point = '已经领取';
                            }else{ // 没数据
                                if($num == ''){
                                    $v->point = '领取';
                                }else{
                                    if($num == 0 || $z_money < $v->money){
                                        $v->point = '您来晚了';
                                    }else{
                                        $v->point = '领取';
                                    }
                                }
                            }
                            $product_class_id = $v->product_class_id; // 活动指定商品类型id
                            $product_id = $v->product_id; // 活动指定商品id
                            if($product_class_id != 0){
                                $arr_1 = explode('-', $product_class_id);
                                $arr_1 = array_filter($arr_1);
                                $arr_1 = array_values($arr_1);
                                $count = count($arr_1) - 1;
                                $product_class_id = $arr_1[$count];
                                // 根据商品分类id,查询分类id、分类名称
                                $sql = "select cid,pname from lkt_product_class where cid = '$product_class_id' ";
                                $rr = $db->select($sql);
                                $v->cid = $rr[0]->cid; // 商品分类id
                                $v->pname = $rr[0]->pname; // 商品分类名称
                                if($product_id != 0){
                                    $sql = "select id,product_title from lkt_product_list where id = '$product_id'";
                                    $rrr = $db->select($sql);
                                    $v->p_id = $rrr[0]->id;
                                    $v->product_title = $rrr[0]->product_title;
                                    $v->limit = '只能在' . $rrr[0]->product_title . '类使用'; // 限制
                                }else{
                                    $v->p_id = 0;
                                    $v->product_title = '';
                                    $v->limit = '只能在' . $v->pname . '类使用'; // 限制
                                }
                            }else{
                                $v->cid = 0; // 商品分类id
                                $v->pname = ''; // 商品分类名称
                                $v->limit = '无使用门槛'; // 限制
                            }
                        }
                    }
                }
                $arr[$k] = $v;
            }
        }
        // 根据活动为未开启状态,查询活动列表,根据开始时间升序排列
        $sql = "select * from lkt_coupon_activity where status = 0 and software_id like '%$software_id%' order by start_time";
        $rr_1 = $db->select($sql);
        if($rr_1){
            foreach ($rr_1 as $k => $v) {
                $id_2 = $v->id; // 活动id
                $activity_type = $v->activity_type; // 活动类型
                $start_time_3 = $v->start_time; // 活动开始时间
                $end_time_3 = $v->end_time; // 活动结束时间
                $v->start_time = date('Y-m-d',strtotime($v->start_time)); // 开始时间
                $v->end_time = date('Y-m-d',strtotime($v->end_time)); // 结束时间

                $product_class_id = $v->product_class_id; // 活动指定商品类型id
                $product_id = $v->product_id; // 活动指定商品id
                if($product_class_id != 0){
                    $arr_1 = explode('-', $product_class_id);
                    $arr_1 = array_filter($arr_1);
                    $arr_1 = array_values($arr_1);
                    $count = count($arr_1) - 1;
                    $product_class_id = $arr_1[$count];
                    // 根据商品分类id,查询分类id、分类名称
                    $sql = "select cid,pname from lkt_product_class where cid = '$product_class_id' ";
                    $rr = $db->select($sql);
                    $v->cid = $rr[0]->cid; // 商品分类id
                    $v->pname = $rr[0]->pname; // 商品分类名称
                    if($product_id != 0){
                        $sql = "select id,product_title from lkt_product_list where id = '$product_id'";
                        $rrr = $db->select($sql);
                        $v->p_id = $rrr[0]->id;
                        $v->product_title = $rrr[0]->product_title;
                        $v->limit = '只能在' . $rrr[0]->product_title . '类使用'; // 限制
                    }else{
                        $v->p_id = 0;
                        $v->product_title = '';
                        $v->limit = '只能在' . $v->pname . '类使用'; // 限制
                    }
                }else{
                    $v->cid = 0; // 商品分类id
                    $v->pname = ''; // 商品分类名称
                    $v->limit = '无使用门槛'; // 限制
                }
                // 判断活动是否开启
                if($start_time_3 <= $time){
                    // 开启,根据活动id,修改活动状态
                    $sql = "update lkt_coupon_activity set status = 1 where id = '$id_2'";
                    $db->update($sql);
                    $v->point = '领取';
                }else{
                    $v->point = '敬请期待';
                    
                }
                $rew_2 = ++$rew_1; 
                $arr[$rew_2] = $v;
            }
        }else{
            $rew_2 = $rew_1; 
        }

        // $sql = "select id from lkt_software where type = 0 and name = '$software_name' order by id desc";
        // $rrrr = $db->select($sql);
        // foreach ($rrrr as $key => $value) {
            // 查询优惠券插件配置
        $sql = "select * from lkt_coupon_config where software_id = " . $software_id;
        $r = $db->select($sql);
        if($r){
            $activity_overdue = $r[0]->activity_overdue; // 活动过期删除时间
        }
        // }

        // 根据活动为结束状态,查询活动列表,根据结束时间降序排列
        $sql = "select * from lkt_coupon_activity where status = 3 and software_id like '%$software_id%' order by end_time desc";
        $rr_2 = $db->select($sql);
        if($rr_2){
            foreach ($rr_2 as $k => $v) {
                $id = $v->id; // 活动id
                $v->start_time = date('Y-m-d',strtotime($v->start_time)); // 开始时间
                $v->end_time = date('Y-m-d',strtotime($v->end_time)); // 结束时间
                if($activity_overdue != 0){
                    $time = date('Y-m-d H:i:s');
                    $end_time = date('Y-m-d',strtotime(" +$activity_overdue day",strtotime($v->end_time))); // 活动过期删除时间
                    // 当 当前时间大于活动过期保留时间,删除活动
                    if($time > $end_time){
                        $sql = "delete from lkt_coupon_activity where id = '$id'";
                        $db->delete($sql);
                    }
                }
                $product_class_id = $v->product_class_id; // 活动指定商品类型id
                $product_id = $v->product_id; // 活动指定商品id
                if($product_class_id != 0){
                    $arr_1 = explode('-', $product_class_id);
                    $arr_1 = array_filter($arr_1);
                    $arr_1 = array_values($arr_1);
                    $count = count($arr_1) - 1;
                    $product_class_id = $arr_1[$count];
                    // 根据商品分类id,查询分类id、分类名称
                    $sql = "select cid,pname from lkt_product_class where cid = '$product_class_id' ";
                    $rr = $db->select($sql);
                    $v->cid = $rr[0]->cid; // 商品分类id
                    $v->pname = $rr[0]->pname; // 商品分类名称
                    if($product_id != 0){
                        $sql = "select id,product_title from lkt_product_list where id = '$product_id'";
                        $rrr = $db->select($sql);
                        $v->p_id = $rrr[0]->id;
                        $v->product_title = $rrr[0]->product_title;
                        $v->limit = '只能在' . $rrr[0]->product_title . '类使用'; // 限制
                    }else{
                        $v->p_id = 0;
                        $v->product_title = '';
                        $v->limit = '只能在' . $v->pname . '类使用'; // 限制
                    }
                }else{
                    $v->cid = 0; // 商品分类id
                    $v->pname = ''; // 商品分类名称
                    $v->limit = '无使用门槛'; // 限制
                }
                $v->point = '已经结束';
                $rew_3 = ++$rew_2; 
                $arr[$rew_3] = $v;
            }
        }
           
        echo json_encode(array('list'=>$arr));
        exit();
    }
    // 点击领取
    public function receive(){
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $software_name = trim($request->getParameter('software_name')); // 软件名称
        $edition = trim($request->getParameter('edition')); // 版本号
        $openid = trim($request->getParameter('openid')); // 微信id
        $id = trim($request->getParameter('id')); // 活动id

        // 查询用户id
        $sql = "select user_id,Register_data from lkt_user where wx_id = '$openid'";
        $user = $db->select($sql);
        $user_id = $user[0]->user_id; // 用户id
        $Register_data = $user[0]->Register_data; // 注册时间
       
        // 根据软件名称，查询软件id和名称
        // $sql = "select id from lkt_software where name = '$software_name' and edition = '$edition' and type = 0";
        // $r_software = $db->select($sql);
        // if($r_software){
        //     $software_id = $r_software[0]->id;
        // }
        $software_id = $software_name;
        // 根据活动id,查询活动
        $sql = "select * from lkt_coupon_activity where id = '$id'";
        $r_1 = $db->select($sql);
        if($r_1){
            $money = $r_1[0]->money; // 金额
            $z_money = $r_1[0]->z_money; // 总金额
            $num = $r_1[0]->num; // 数量
            $end_time = $r_1[0]-> end_time; // 活动结束时间
            if($num != ''){
                if($num != 0 && $z_money != 0){
                    // 根据活动id,修改活动信息
                    $sql = "update lkt_coupon_activity set z_money=z_money-'$money',num='$num'-1 where id = '$id'";
                    $db->update($sql);
                }else{
                    echo json_encode(array('status'=>0,'info'=>'您来晚了！'));
                    exit();  
                }
            }
            // 在优惠券表里添加一条数据
            $sql = "insert into lkt_coupon(software_id,user_id,money,add_time,expiry_time,hid) values('$software_id','$user_id','$money',CURRENT_TIMESTAMP,'$end_time','$id')";
            $db->insert($sql);
            echo json_encode(array('status'=>1,'info'=>'您领取了' . $money  .'！'));
            exit();
        }else{
            echo json_encode(array('status'=>0,'info'=>'参数错误！'));
            exit();
        }
    }
    // 我的优惠券
    public function mycoupon(){
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $software_name = trim($request->getParameter('software_name')); // 软件名称
        $openid = trim($request->getParameter('openid')); // 微信id
        
        // 根据微信id,查询用户id
        $sql = "select user_id from lkt_user where wx_id = '$openid'";
        $r = $db->select($sql);
        $user_id = $r[0]->user_id;
        // 查询配置表(公司logo)
        $sql = "select * from lkt_config where id = 1";
        $r_c = $db->select($sql);
        $company = $r_c[0]->company; // 公司名称

        $software_id = $software_name;
        $list = '';
        // $sql = "select id from lkt_software where type = 0 and name = '$software_name' order by id desc";
        // $rrrr = $db->select($sql);
        // foreach ($rrrr as $key => $value) {
        // $software_id[] = $value->id;
        // 查询优惠券插件配置
        $sql = "select * from lkt_coupon_config where software_id = " . $software_id;
        $r = $db->select($sql);
        if($r){
            $coupon_overdue = $r[0]->coupon_overdue; // 优惠券过期删除时间
        }
        // }

        // foreach ($software_id as $key1 => $value1) {
        // 根据用户id,查询优惠券表
            $sql = "select * from lkt_coupon where user_id = '$user_id' and software_id = '$software_id' order by type,add_time";
            $rr = $db->select($sql);
            if($rr){
                foreach ($rr as $k => $v) {
                    $id = $v->id; // 优惠券id
                    $hid = $v->hid; // 活动id
                    $expiry_time = $v->expiry_time; // 优惠券到期时间
                    $time = date('Y-m-d H:i:s',time()); // 当前时间
                    if($v->type == 0){
                        $v->point = '立即使用';
                    }else if($v->type == 1){
                        $v->point = '使用中';
                    }else if($v->type == 2){
                        $v->point = '已使用';
                    }else if($v->type == 3){
                        $v->point = '已过期';
                    }
                    // 根据活动id,查询活动信息
                    $sql = "select * from lkt_coupon_activity where id = '$hid'";
                    $rrr = $db->select($sql);
                    if($rrr){
                        $v->name = $rrr[0]->name; // 活动名称
                    }else{
                        $v->name = $company;
                    }
                    
                    if($expiry_time < $time){ // 已过期
                        // 根据用户id,修改优惠券表的状态
                        $sql = "update lkt_coupon set type = 3 where user_id = '$user_id' and id = '$id' and type != 2 ";
                        $db->update($sql);
                        $v->type =3;
                    }
                    if($coupon_overdue !=0){
                        $time_r = date("Y-m-d H:i:s",strtotime("$expiry_time   +$coupon_overdue   day")); // 优惠券过期删除时间
                        // 过期时间超过1天,删除这条信息
                        if($time_r < $time){
                            // 根据用户id、优惠券id、优惠券类型为过期,删除这条信息
                            $sql = "delete from lkt_coupon where user_id = '$user_id' and id = '$id'";
                            $db->delete($sql);
                        }
                    }
                    $list[] = $v;
                }
            }

        // }
        if($list != ''){
            echo json_encode(array('status'=>1,'list'=>$list));
            exit();
        }else{
            echo json_encode(array('status'=>0,'info'=>'暂无数据'));
            exit();
        }
    }
    // 立即使用
    public function immediate_use(){
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $software_name = trim($request->getParameter('software_name')); // 软件名称
        $id = trim($request->getParameter('id')); // 优惠券id
        $openid = trim($request->getParameter('openid')); // 微信id
        $software_id = $software_name;
        // 根据微信id,查询用户id
        $sql = "select user_id from lkt_user where wx_id = '$openid'";
        $r = $db->select($sql);
        $user_id = $r[0]->user_id;

        // $sql = "select id from lkt_software where type = 0 and name = '$software_name' order by id desc";
        // $rrrr = $db->select($sql);
        // foreach ($rrrr as $key => $value) {
        //     $software_id[] = $value->id;
        // }

        // foreach ($software_id as $ke => $val) {
            // 根据用户id,查询优惠券表里在使用中的优惠券
            $sql = "select * from lkt_coupon where user_id = '$user_id' and software_id = '$software_id' and type = 1";
            $rr = $db->select($sql);
            if($rr){
                foreach ($rr as $k => $v) {
                    $coupon_id = $v->id; // 优惠券id
                    $hid = $v->hid; // 活动id
                    // 根据优惠券id,查询订单表
                    $sql = "select id from lkt_order where coupon_id = '$coupon_id' ";
                    $rr = $db->select($sql);
                    if(empty($rr)){
                        // 优惠券没有绑定
                        if($coupon_id == $id){ // 传过来的优惠券id 与 查询没绑定的优惠券id 相等
                            // 根据优惠券id,修改优惠券状态(未使用)
                            $sql = "update lkt_coupon set type = 0 where id = '$id'";
                            $db->update($sql);
                            echo json_encode(array('status'=>0));
                            exit(); 
                        }else{ // 传过来的优惠券id 与 查询没绑定的优惠券id 不相等
                            // 根据查询没绑定的优惠券id,修改优惠券状态(未使用)
                            $sql = "update lkt_coupon set type = 0 where id = '$coupon_id'";
                            $db->update($sql);
                            // 根据传过来的优惠券id,修改优惠券状态(未使用)
                            $sql = "update lkt_coupon set type = 1 where id = '$id'";
                            $db->update($sql);
                            echo json_encode(array('status'=>1));
                            exit(); 
                        }
                    }
                }
            }else{
                // 没有数据,就直接把优惠券状态改成(使用中)
                $sql = "update lkt_coupon set type = 1 where id = '$id'";
                $db->update($sql);
                echo json_encode(array('status'=>1));
                exit(); 
            }
        // }
    }

    // 我的优惠券(可以使用的)
    public function my_coupon(){
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $software_name = trim($request->getParameter('software_name')); // 软件名称
        $openid = trim($request->getParameter('openid')); // 微信id
        $software_id = $software_name;
        // 根据微信id,查询用户id
        $sql = "select user_id from lkt_user where wx_id = '$openid'";
        $r = $db->select($sql);
        $user_id = $r[0]->user_id; // 用户id

        // $sql = "select id from lkt_software where type = 0 and name = '$software_name' order by id desc";
        // $rrrr = $db->select($sql);
        // foreach ($rrrr as $key => $value) {
        //     $software_id[] = $value->id;
        // }
        $rew_1 = 0;
        // foreach ($software_id as $key1 => $value1) {
        // 根据用户id,查询优惠券状态为使用中的数据
        $sql = "select * from lkt_coupon where user_id = '$user_id' and software_id = '$software_id' and type = 1";
        $r_1 = $db->select($sql);
        
        if($r_1){
            foreach ($r_1 as $k => $v) {
                $id = $v->id; // 优惠券id
                // 根据优惠券id,查询订单
                $sql = "select id from lkt_order where coupon_id = '$id' ";
                $rr = $db->select($sql);
                if(empty($rr)){ // 没有数据,表示该优惠券没绑定
                    // 根据用户id,查询优惠券状态为使用中的数据
                    $sql = "select id,money from lkt_coupon where user_id = '$user_id' and id = '$id'";
                    $r_2 = $db->select($sql);
                    if($r_2){
                        $r_2[0]->point = '正在使用';
                        $arr[0] = $r_2[0];
                        break;
                    }
                }
            }
        }
        // 根据用户id,查询优惠券状态为(未使用),以优惠券过期时间顺序排列
        $sql = "select id,money from lkt_coupon where user_id = '$user_id' and software_id = '$software_id' and type = 0 order by expiry_time";
        $rr = $db->select($sql);

        if($rr){
            foreach ($rr as $k => $v) {
                $v->point = '立即使用';
                $rew_2 = ++$rew_1;
                $arr[$rew_2] = $v;
            }
        }
        // }
        ksort($arr);

        if($arr != ''){
            echo json_encode(array('list'=>$arr));
            exit();
        }else{
            echo json_encode(array('status'=>0,'info'=>'暂无数据'));
            exit();
        }
    }

    // 选择优惠券
    public function getvou(){
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $software_name = trim($request->getParameter('software_name')); // 软件名称

        $cart_id = trim($request->getParameter('cart_id')); // 微信id
        $coupon_money = trim($request->getParameter('coupon_money')); // 微信id
        $openid = trim($request->getParameter('openid')); // 微信id
        $coupon_id = trim($request->getParameter('coupon_id')); // 微信id
        // 根据活动id,查询活动信息
        $sql = "select user_id from lkt_user where wx_id = '$openid'";
        $r = $db->select($sql);
        $user_id = $r[0]->user_id; // 用户id

        $typestr=trim($cart_id,','); // 移除两侧的逗号
        $typeArr=explode(',',$typestr); // 字符串打散为数组
        $zong =0;
        foreach ($typeArr as $key => $value) {
            // 联合查询返回购物信息
            $sql_c = 'select a.Goods_num,a.Goods_id,a.id,c.price from lkt_cart AS a LEFT JOIN lkt_product_list AS m ON a.Goods_id = m.id LEFT JOIN lkt_configure AS c ON a.Size_id = c.id  where a.id = \''.$value.'\'';
            $r_c = $db->select($sql_c);
            $product = (array)$r_c['0']; // 转数组

            $num = $product['Goods_num']; // 产品数量
            $price = $product['price']; // 产品价格
            $zong += $num*$price; // 产品总价
            $res[$key] = $product; 
        }
        
        $software_id = $software_name;
        // $sql = "select id from lkt_software where type = 0 and name = '$software_name' order by id desc";
        // $rrrr = $db->select($sql);
        // foreach ($rrrr as $key => $value) {
        //     $software_id[] = $value->id;
        // }
        
        // foreach ($software_id as $ke => $val) {
            // 根据用户id、优惠劵状态为使用中，查询没绑定的优惠劵
        $sql = "select a.* from lkt_coupon as a where (select count(1) AS num from lkt_order as b where a.id = b.coupon_id) = 0 and user_id = '$user_id' and software_id = '$software_id' and a.type = 1";
        $r_1 = $db->select($sql);
        if($r_1){ // 有没绑定的优惠劵id
            $r_1 = $r_1;
            // break;
        }else{
            $r_1 = '';
        }
        // }
        if($r_1){ // 有没绑定的优惠劵id
            $id = $r_1[0]->id; // 没绑定的优惠劵id
            if($coupon_id){ // 传过来的优惠劵id
                if($id == $coupon_id){ // 当前在使用的优惠劵id与传过来的优惠劵相等
                    $money = $r_1[0]->money; // 优惠券金额
                    $coupon_money = $coupon_money+$money; // 付款金额+上优惠卷金额
                    // 当获取的优惠券id 与 状态为(使用中的id) 相等时,改状态为(未使用)
                    $sql = "update lkt_coupon set type = 0 where id = '$coupon_id'";
                    $db->update($sql);
                    echo json_encode(array('status'=>1,'id'=>'','money'=>'','zong'=>$zong,'coupon_money'=>$coupon_money));
                    exit(); 
                }else{ // 当前在使用的优惠劵id与传过来的优惠劵不相等
                    // 查询当前在使用的优惠券金额
                    $sql = "select * from lkt_coupon where id = '$id'";
                    $r_3 = $db->select($sql);
                    $ymoney = $r_3[0]->money; // 原优惠券金额
                    $coupon_money = $coupon_money + $ymoney; // 优惠后金额 加上 原优惠金额
                    // 查询传过来的优惠券金额
                    $sql = "select * from lkt_coupon where id = '$coupon_id'";
                    $r_2 = $db->select($sql);
                    $money = $r_2[0]->money; // 优惠券金额
                    if($coupon_money > $money){ // 当付款金额大于优惠劵金额
                        // 改原状态为(使用中 变为 未使用)
                        $sql = "update lkt_coupon set type = 0 where id = '$id'";
                        $db->update($sql);

                        // 改获取id状态为(未使用 变为 使用中)
                        $sql = "update lkt_coupon set type = 1 where id = '$coupon_id'";
                        $db->update($sql);
                        $coupon_money = $coupon_money-$money;
                        echo json_encode(array('status'=>1,'id'=>$coupon_id,'money'=>$money,'zong'=>$zong,'coupon_money'=>$coupon_money));
                        exit();  
                    }else{ // 当付款金额大于优惠劵金额
                        $coupon_money = $coupon_money-$ymoney;
                        echo json_encode(array('status'=>0,'id'=>$id,'money'=>$ymoney,'zong'=>$zong,'coupon_money'=>$coupon_money,'err'=>'优惠券金额太大！'));
                        exit();
                    }
                }
            }else{ // 传过来的优惠劵id,不存在
                // 查询优惠券金额
                $sql = "select * from lkt_coupon where id = '$id'";
                $r_2 = $db->select($sql);
                $money = $r_2[0]->money; // 优惠券金额
                echo json_encode(array('status'=>1,'id'=>$id,'money'=>$money,'zong'=>$zong,'coupon_money'=>$coupon_money));
                exit(); 
            }
        }else{ // 没有没绑定的优惠劵
            if($coupon_id){ // 传过来的优惠劵id存在
                // 根据传过来的优惠劵id,查询优惠金额
                $sql = "select * from lkt_coupon where id = '$coupon_id'";
                $r = $db->select($sql);
                $money = $r[0]->money; // 优惠劵金额
                if($money < $coupon_money){
                    $coupon_money = $coupon_money - $money; // 付款金额-优惠劵金额
                    // 根据传过来的优惠劵id, 修改优惠劵状态（使用中）
                    $sql = "update lkt_coupon set type = 1 where id = '$coupon_id'";
                    $db->update($sql);
                    echo json_encode(array('status'=>1,'id'=>$coupon_id,'money'=>$money,'zong'=>$zong,'coupon_money'=>$coupon_money));
                    exit();
                }else{
                    $coupon_money = $coupon_money;
                    echo json_encode(array('status'=>0,'id'=>'','money'=>'','zong'=>$zong,'coupon_money'=>$coupon_money,'err'=>'优惠券金额太大！'));
                    exit();
                }
            }else{ // 没有传优惠劵id过来
                echo json_encode(array('status'=>1,'id'=>'','money'=>'','zong'=>$zong,'coupon_money'=>$coupon_money));
                exit();
            }
        }
    }
}

?>