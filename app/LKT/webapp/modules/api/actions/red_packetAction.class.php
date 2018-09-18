<?php
require_once(MO_LIB_DIR . '/DBAction.class.php');
require_once(MO_LIB_DIR . '/ShowPager.class.php');
require_once(MO_LIB_DIR . '/Tools.class.php');
/**
 * [Laike System] Copyright (c) 2018 laiketui.com
 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.
 */
//发红包
class red_packetAction extends Action {

    public function getDefaultView() {
        return;
        
    }

    public function execute(){
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $m = addslashes(trim($request->getParameter('m')));
        
        if($m == 'index'){//进入红包页
            $this -> index();
        }elseif($m == 'red_packet_send'){//发红包
            $this -> red_packet_send();
        }else if($m == 'red_packet_show'){//显示红包相关信息
            $this->red_packet_show();
        }else if($m == 'product_share'){//分享朋友圈，保存图片
            $this->product_share();
        }else if($m == 'send'){//发出红包
            $this->send();
        }else if($m == 'received'){//收到红包
            $this->received();
        }else if($m == 'red_packet_open'){//拆红包
            $this->red_packet_open();
        }else if($m == 'red_packet_del'){//删除创建红包
            $this->red_packet_del();
        }else if($m == 'detailed'){//钱包明细
            $this->detailed();
        }else if($m == 'forward'){//钱包提现
            $this->forward();
        }else if ($m == 'jilu') {//确认订单使用红包
             $this->jilu();
        }
        return;
    } 
    
        #name//活动名称
        #bizhi//红包金额与数量比值
        #send_redpacket//可以发送红包个数
        #receive_redpacket//可以领取红包个数
        #bili//红包抵用比例
        #tixian//红包是否可以提现(1.是 2.否)
        #shixiao_time//红包链接失效时间
        #shixiao_time1//红包失效时间
    public function index(){
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $openid = $request->getParameter('openid');
        $sql = "select headimgurl from lkt_user where wx_id='$openid'";
        // print_r($sql);die;
        $re = $db->select($sql);

        $sql01 = "select * from lkt_red_packet_config";
        $r_1 = $db->select($sql01);
        if(!empty($r_1)){
            $re01=unserialize($r_1[0]->sets);
            $bizhi = $re01['bizhi'];//红包金额与数量比值
            $send_redpacket = $re01['send_redpacket'];//可以发送红包个数
            $shixiao_time = $re01['shixiao_time'];//红包链接失效时间

            $hous = 24*$shixiao_time;
            $re01['hous'] = $hous;
             
            $datetime = date("Y-m-d H:i:s",time());//当前时间
            $dd = date("Y-m-d H:i:s", strtotime($datetime)-$shixiao_time*24*3600);//当前失效链接创建的最早时间

            $sql02 = "select r_id,num from lkt_red_packet_send where openid='$openid'and time>='$dd'";
            $r02 = $db->select($sql02);
            // print_r($r02);die;
            if(!empty($r02)){
                foreach ($r02 as $key => $value) {
                    $id = $value->r_id;
                    $num = $value->num;
                    $sql03 = "select * from lkt_red_packet_detailed where r_id='$id'";
                    $r03 = $db->selectrow($sql03);  
                    if($num <= $r03){//发红包个数小于等于领红包个数就清除他
                        unset($r02[$key]);
                    }
                }
            }
            if(!empty($r02)){
                 $n = count($r02);
            }else{
                 $n = 0;
            }

            if($n>=$send_redpacket){//已发送的合格红包大于或等于规定的红包数
                 echo json_encode(array('re'=>$re,'bizhi' =>'','status'=>0));exit;
            }else{
                 echo json_encode(array('re'=>$re,'bizhi' =>$re01,'status'=>1));exit;
            }

        }else{
          
            echo json_encode(array('re'=>$re,'bizhi' =>$re01,'status'=>1));exit;
        }
    }


    public function red_packet_send(){
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $openid = $request->getParameter('openid');//用户
        $money = $request->getParameter('money');//金额
        $num = $request->getParameter('num') ;//数量
        $remarks = $request->getParameter('remarks')?$request->getParameter('remarks'):"恭喜发财，大吉大利";//备注
        //现在时间
        $datetime = date('Y-m-d H:i:s',time());
        $tes = $this->redpacket($money,$num);
    
        if(!empty($tes)){
            $red = implode(',',$tes);
        }else{
            $red = '';
        }
        // print_r($red);die;
        $sql="insert into lkt_red_packet_send(openid,money,num,remarks,time,detailed) " .
                "values('$openid','$money','$num','$remarks','$datetime','$red')";
        $re = $db->insert($sql,'last_insert_id');

         echo json_encode(array('re'=>$re));
        exit;
    }

    function redpacket($money,$num){//添加红包信息时随机获取每个红包的金额

        $total = $money;//总金额
        $min = 0.01;//单个红包最小金额数
        $res = array();
        // for ($i=1;$i<$num;$i++){
        //     $safe_total=($total-($num-$i)*$min)/($num-$i);//随机安全上限
        //     $money=mt_rand($min*100,$safe_total*100)/100;
        //     $res[] = $money;
        // }
        // return $res;
        for ($i=1;$i<$num;$i++) 
        { 
         $safe_total=($total-($num-$i)*$min)/($num-$i);//随机安全上限 
         $money=mt_rand($min*100,$safe_total*100)/100; 
         $res[] = $money;
         $total=$total-$money; 
         // echo '第'.$i.'个红包：'.$money.' 元，余额：'.$total.' 元 '; 
        }
        $res[] = $total;
        return $res;
        // echo '第'.$num.'个红包：'.$total.' 元，余额：0 元';
        // print_r($res);die; 

    }
    public function red_packet_show(){
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();

        $openid = $request->getParameter('openid'); // 本人微信id
        $id = $request->getParameter('id'); // 红包ID
        

        $sql02 = "select * from lkt_red_packet_config";
        $r_102 = $db->select($sql02);
        if(!empty($r_102)){
            $re01=unserialize($r_102[0]->sets);
            $shixiao_time1 = $re01['shixiao_time1'];
        }
        $datetime = date("Y-m-d H:i:s",time());//当前时间
        $ddd = date("Y-m-d H:i:s", strtotime($datetime)-$shixiao_time1*24*3600);//

        $sql = "select a.*,b.headimgurl,b.user_name from lkt_red_packet_send as a,lkt_user as b where a.openid = b.wx_id and r_id = '$id'";//查询红包信息
        $r_1 = $db->select($sql);
        if(!empty($r_1)){
            // $r_1 = $r_1;
            if($r_1[0]->openid == $openid){//判断该用户为发红包的用户，直接查询其他抢红包的红包之和
                 $sql03 = "select sum(money) as a from lkt_red_packet_detailed where r_id = '$id'";
                 $a =  $db->select($sql03);
                 if (!empty($a[0]->a)) {
                      $money = $a[0]->a;
                 }else{
                     $money = '0';
                 }
                $status = 2;//未失效
            }else{

                $sql02 = "select money from lkt_red_packet_detailed where r_id = '$id' and openid = '$openid'";//查询领取该红包的人的详细信息
                $r_102 = $db->select($sql02);
                if(!empty($r_102)){
                    $money = $r_102[0]->money;
                }else{
                    $money = '';
                }

                if($ddd>$r_1[0]->time){
                    $status = 1;//失效
                }else{
                    $status = 2;//未失效
                }
            }
// print_r($ddd);print_r($r_1[0]->time);die;
            
        }else{
            $r_1 = 1;
            $status = 3;//未失效
        }


        $sql01 = "select a.*,b.headimgurl,b.user_name from lkt_red_packet_detailed as a ,lkt_user as b where a.openid = b.wx_id and r_id = '$id'";//查询领取该红包的人的详细信息
        $r_101 = $db->select($sql01);
         if(!empty($r_101)){
            $r_101 = $r_101;
        }else{
            $r_101 = 1;
        }
        $r_1001 = $db->selectrow($sql01);
        echo json_encode(array('money'=>$money,'r_1'=>$r_1,'r_101'=>$r_101,'num'=>$r_1001,'status'=>$status));
        exit;

    }

    public function send(){
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $openid = $request->getParameter('openid'); // 本人微信id
        // $openid = 'oHNXh5IAU7UozPqfBgYyBug52nAE';
        $sql02 = "select * from lkt_red_packet_config";
        $r_102 = $db->select($sql02);
        if(!empty($r_102)){
            $re01=unserialize($r_102[0]->sets);
            $shixiao_time = $re01['shixiao_time'];
            $shixiao_time1 = $re01['shixiao_time1'];
        }
        $datetime = date("Y-m-d H:i:s",time());//当前时间

        $sql05 = "select sum(money) as aa from lkt_red_packet_record where openid = '$openid' and type = 1 and time>='$datetime'";
        $aa = $db->select($sql05);//有效红包

        $sql06 = "select sum(money) as bb from lkt_red_packet_record where openid = '$openid' and type = 1";
        $bb = $db->select($sql06);//全部领取的红包
        $sql07 = "select sum(money) as cc from lkt_red_packet_record where openid = '$openid' and type != 1 ";
        $cc = $db->select($sql07);//使用的红包

        if(!empty($aa[0]->aa)){
            $aaa = $aa[0]->aa;
        }else{
             $aaa = '0';
        }
        if(!empty($bb[0]->bb)){
            $bbb = $bb[0]->bb;
        }else{
             $bbb = '0';
        }
        if(!empty($cc[0]->cc)){
            $ccc = $cc[0]->cc;
        }else{
             $ccc = '0';
        }
        $ddd = $bbb-$ccc;//剩余的包括无效红包
        if($aaa>=$ddd){//有效的钱大于剩余的钱
            $total = $ddd;//红包为剩余的钱
        }else{
            $total = $aaa;//红包为有效的钱
        }

        $sql = "select a.*,b.headimgurl,b.user_name from lkt_red_packet_send as a,lkt_user as b where a.openid = b.wx_id and a.openid = '$openid' order by a.time desc";//查询红包信息
        $r_1 = $db->select($sql);
        // $num01 = $db->selectrow($sql);//发出红包数量
        $conmoney = 0;
        $num01 = 0;
        if(!empty($r_1)){
            foreach ($r_1 as $key => $value) {
                $r_id = $value->r_id;
                $money = $value->money;
                $datetime1 = $value->time;//发送红包时间
                $dd = date("Y-m-d H:i:s", strtotime($datetime)-$shixiao_time*24*3600);//当前失效链接创建的最早时间
                $datime = $shixiao_time1-3;
                $dd3 = date("Y-m-d H:i:s", strtotime($datetime)-$datime*24*3600);//三天后失效红包
                $ddd = date("Y-m-d H:i:s", strtotime($datetime)-$shixiao_time1*24*3600);//当前失效红包创建的最早时间
                // print_r($dd);print_r($datetime1);die;
                if($dd>$datetime1){
                    $r_1[$key]->type = 1;//失效链接
                }else{
                    $r_1[$key]->type = 2;//有效链接
                }
                
               $sql001 = "select * from lkt_red_packet_detailed where r_id = '$r_id' and time < '$ddd' ";//查询红包信息
                $r_1001 = $db->select($sql001); 
                if(!empty($r_1001)){
                    $r_1[$key]->type2 = 1;//失效红包
                }else{
                    $sql002 = "select * from lkt_red_packet_detailed where r_id = '$r_id' and time < '$dd3' ";//查询红包信息
                    $r_1002 = $db->select($sql002); 
                    if(!empty($r_1002)){
                        $r_1[$key]->type2 = 2;//3 失效红包
                    }else{
                        $r_1[$key]->type2 = 3;// 3  有效红包
                    }
                }

                $sql01 = "select a.*,b.headimgurl,b.user_name from lkt_red_packet_detailed as a ,lkt_user as b where a.openid = b.wx_id and r_id = '$r_id'";//查询领取该红包的人的详细信息
                // $r_101 = $db->select($sql01);
                $num = $db->selectrow($sql01);
                $r_1[$key]->num1 = $num;
                $sql001 = "select sum(money)as a from lkt_red_packet_detailed where r_id = '$r_id' and openid !='$openid'";
                $total01 = $db ->select($sql001);
                $tmoney =$total01[0]->a;
                if(!empty($tmoney)){
                    $mon = $tmoney;
                }else{
                    $mon = 0;
                }
                $sql002 = "select id from lkt_red_packet_detailed where r_id = '$r_id' and openid !='$openid'";
                $num02 = $db ->selectrow($sql002);
                
                if(!empty($num02)){
                    $num1 = $num02;
                }else{
                    $num1 = 0;
                }
                
                $conmoney += $mon;
                $num01 += $num1;

                unset($mon);
                unset($num);
                unset($num1);
            }
        }

        echo json_encode(array('money'=>$conmoney,'r_1'=>$r_1,'num'=>$num01,'total'=>$total,'re01'=>$re01));
        exit;
    }
    public function received(){//收到红包
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();

        $openid = $request->getParameter('openid'); // 本人微信id
        $sql02 = "select * from lkt_red_packet_config";
        $r_102 = $db->select($sql02);
        if(!empty($r_102)){
            $re01=unserialize($r_102[0]->sets);
            $shixiao_time = $re01['shixiao_time'];
            $shixiao_time1 = $re01['shixiao_time1'];
        }
        $datetime = date("Y-m-d H:i:s",time());//当前时间


        $sql = "select a.* ,b.remarks,b.openid as openid1 from lkt_red_packet_detailed as a,lkt_red_packet_send as b where a.r_id = b.r_id and a.openid = '$openid' order by time desc";
        // print_r($sql);die;
        $r= $db->select($sql);
          $num = $db->selectrow($sql);
          $conmoney=0;
        if(!empty($r)){
            foreach ($r as $key => $value) {
                $openid1=$value->openid1;
                $time=$value->time;
                $sql = "select headimgurl from lkt_user where wx_id='$openid1'";
                $re = $db->select($sql);
                $money01 = $value->money;
                $r[$key]->headimgurl = $re[0]->headimgurl;
                $conmoney += $money01;
                unset($money01);

                $datime = $shixiao_time1-3;
                $dd3 = date("Y-m-d H:i:s", strtotime($datetime)-$datime*24*3600);//三天后失效红包
                $ddd = date("Y-m-d H:i:s", strtotime($datetime)-$shixiao_time1*24*3600);//

                if($time < $ddd){
                    $r[$key]->type2 = 1;//失效红包
                }else{
                    if($time < $dd3){
                        $r[$key]->type2 = 2;//3 失效红包
                    }else{
                         $r[$key]->type2 = 3;//3 失效红包
                    }
                }

                
            }
        }
        

          echo json_encode(array('money'=>$conmoney,'r_1'=>$r,'num'=>$num));
        exit;

    }
    public function detailed(){
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();

        $openid = $request->getParameter('openid'); // 本人微信id
        $type = $request->getParameter('typye'); // 类型
        $datetime = date("Y-m-d H:i:s",time());//当前时间

         $sql02 = "select * from lkt_red_packet_config";
        $r_102 = $db->select($sql02);
        if(!empty($r_102)){
            $re01=unserialize($r_102[0]->sets);
            $shixiao_time1 = $re01['shixiao_time1'];
        }

        if($type == 2){
            $con = "and a.type = 3";//提现
        }elseif($type ==3 ){
            $con = "and a.type = 2";//正常消费
        }elseif($type ==4 ){
            $con = " and a.time < '$datetime' and a.type = 1";//已失效
        }else{
            $con = "";//全部
        }
        $sql = "select a.* ,b.remarks,b.openid as openid1 from lkt_red_packet_record as a,lkt_red_packet_send as b where a.r_id = b.r_id and a.openid = '$openid'".$con." order by time desc";
        $r= $db->select($sql);
        if(!empty($r)){
            foreach ($r as $key => $value) {
                $time1 = $value ->time;
                 $ddd = date("Y-m-d H:i:s", strtotime($time1)-$shixiao_time1*24*3600);//当前失效红包创建的最早时间
                 $r[$key]->time = $ddd;
            }
        }
        $ddtime = date("Y-m-d H:i:s",time()-$shixiao_time1*24*3600);//当前时间相当于失效的时间
        // print_r($r);die;
        echo json_encode(array('r'=>$r,'time'=>$ddtime));
        exit;

    }
    //拆红包
    public function red_packet_open(){
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();

        $openid = $request->getParameter('openid'); // 本人微信id
        $id = $request->getParameter('id'); // 红包ID
        //现在时间
        $datetime = date('Y-m-d H:i:s',time());

        $sql01 = "select * from lkt_red_packet_config";
        $r_1 = $db->select($sql01);
        if(!empty($r_1)){
            $re01=unserialize($r_1[0]->sets);
            $shixiao_time1 = $re01['shixiao_time1'];//红包失效时间
            $dd = date("Y-m-d H:i:s", strtotime($datetime)+ $shixiao_time1*24*3600);//红包过期时间
        }
        $sql_w = "select * from lkt_red_packet_detailed  where r_id = '$id' and openid ='$openid'";//查询用户是否领过该红包
        $r_w = $db->select($sql_w);
        if(!empty($r_w)){
            echo json_encode(array('total'=>'已经领过该红包了','status'=>3));
            exit;
        }else{
            $sql = "select * from lkt_red_packet_send  where r_id = '$id'";//查询红包信息
            $r_1 = $db->select($sql);
            // print_r($sql);die;
            if(!empty($r_1)){
                $money = $r_1[0]->detailed;
                $openid1 = $r_1[0]->openid;
                $re = explode(',',$money);
                $total = $re[0];//拆红包的金额
                // print_r($total);die;
                unset($re[0]);
                $red = implode(',',$re);
                $sql01 = "update lkt_red_packet_send set detailed = '$red' where r_id = '$id'";
                $r01 = $db->update($sql01);//修改原来红包的数量，清除数据

                $sql02="insert into lkt_red_packet_detailed(r_id,openid,money,time) " .
                    "values('$id','$openid','$total','$datetime')";//添加信息到红包信息表里
                $re = $db->insert($sql02);

                $sql022="insert into lkt_red_packet_record(r_id,openid,money,time,type) " .
                    "values('$id','$openid','$total','$dd','1')";//给拆红包的人添加信息到红包消费记录表里
                $re2 = $db->insert($sql022);
                $sql0222="insert into lkt_red_packet_record(r_id,openid,money,time,type) " .
                    "values('$id','$openid1','$total','$dd','1')";//给发红包的人添加信息到红包消费记录表里
                $re22 = $db->insert($sql0222);

                echo json_encode(array('total'=>$total,'status'=>1));
                exit;


            }else{
                $total = '';
                echo json_encode(array('total'=>$total,'status'=>2));
                exit;
            }
        }

    }
    public function forward(){//提现
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        // 获取信息
        $openid = $_POST['openid']; // 微信openid
        $tmoney = $_POST['money']; // 提现金额

        $datetime = date("Y-m-d H:i:s",time());//当前时间
        $sql = "select r_id,money,time from lkt_red_packet_record where openid = '$openid' and type = 1 and time>='$datetime' order by time asc";
        $re = $db->select($sql);//有效红包

        if(!empty($re)){
            foreach ($re as $key => $value) {
                // print_r($value);die;
               $id01 = $value->r_id;
               $money01 = $value ->money;
               $sql002 = "select sum(money) as aa from lkt_red_packet_record where r_id = '$id01' and type != 1 order by time asc";
               $re002 = $db->select($sql002);
               $total = $re002[0]->aa;
               // print_r($total);die;
               if(!empty($total)){
                    $total = $re002[0]->aa;
                    $total1=$money01-$total;
                    if($total1> 0){
                        $re[$key]->money = $total1;
                    }else{
                        unset($re[$key]);
                    }
               }
            }
             // print_r($re);die;
            if(!empty($re)){
                $re = array_values($re);
                $money = $tmoney;
                for ($i=0; $i < count($re); $i++) { 
                    $dd = $re[$i]->money;//当前红包金额
                    // echo "$dd  钱够 <br/>"   ;
                   if($money >= $dd){
                     $money = $money - $dd;//红包余额
                     $id = $re[$i]->r_id;//当前红包id
                    $time = $re[$i]->time;//当前红包id
                     $sql01="insert into lkt_red_packet_record(r_id,openid,money,time,type) " .
                        "values('$id','$openid','$dd','$time','3')";//给拆红包的人添加信息到红包消费记录表里
                    $re01 = $db->insert($sql01);
                   }else{
                     // echo "$money  钱不够 <br/>"   ;
                        // $ttmoney =$dd - $money;//红包余额
                        $id = $re[$i]->r_id;//当前红包id
                        $time = $re[$i]->time;//当前红包id
                        $sql01="insert into lkt_red_packet_record(r_id,openid,money,time,type) " .
                        "values('$id','$openid','$money','$time','3')";//给拆红包的人添加信息到红包消费记录表里
                    $re01 = $db->insert($sql01);
                    break;
                   }
                }
                // 查询会员信息
                $sql03 = "select user_id,money from lkt_user  where wx_id = '$openid' ";
                $r03 = $db -> select($sql03);
                $user_id = $r03[0]->user_id;
                $array02 = $r03[0]->money;
                $sql = "update lkt_user set money = money+'$tmoney' where wx_id = '$openid'";
                $r = $db->update($sql);
                if($r){
                    $event = '用户 ' . $user_id . ' 使用红包提现了 ' . $tmoney.'元';
                    $sqll = "insert into lkt_record (user_id,money,oldmoney,event,type) values ('$user_id','$tmoney','$array02','$event',6)";
                    $rr = $db->insert($sqll);
                }else{
                    $res = array('err' => '提现失败!','status'=>false);
                    echo json_encode($res);
                    exit;
                }
                $res = array('succ' => '提现成功!','status'=>true);
                echo json_encode($res);
                exit;
            }
        }
    }
    public function jilu(){//确认订单使用红包
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        // 获取信息
        $openid = $_POST['openid']; // 微信openid
        $tmoney = $_POST['total']; // 提现金额

        $datetime = date("Y-m-d H:i:s",time());//当前时间
        $sql = "select r_id,money,time from lkt_red_packet_record where openid = '$openid' and type = 1 and time>='$datetime' order by time asc";
        $re = $db->select($sql);//有效红包
                if(!empty($re)){
            foreach ($re as $key => $value) {
                // print_r($value);die;
               $id01 = $value->r_id;
               $money01 = $value ->money;
               $sql002 = "select sum(money) as aa from lkt_red_packet_record where r_id = '$id01' and type != 1 order by time asc";
               $re002 = $db->select($sql002);
               $total = $re002[0]->aa;
               // print_r($total);die;
               if(!empty($total)){
                    $total = $re002[0]->aa;
                    $total1=$money01-$total;
                    if($total1> 0){
                        $re[$key]->money = $total1;
                    }else{
                        unset($re[$key]);
                    }
               }
            }
            if(!empty($re)){
                $re = array_values($re);
                $money = $tmoney;
                for ($i=0; $i < count($re); $i++) { 
                    $dd = $re[$i]->money;//当前红包金额
                    // echo "$dd  钱够 <br/>"   ;
                   if($money >= $dd){
                     $money = $money - $dd;//红包余额
                     $id = $re[$i]->r_id;//当前红包id
                    // $time = $re[$i]->time;//当前红包id
                     $sql01="insert into lkt_red_packet_record(r_id,openid,money,time,type) " .
                        "values('$id','$openid','$dd','$datetime','2')";//给拆红包的人添加信息到红包消费记录表里
                    $re01 = $db->insert($sql01);
                   }else{
                     // echo "$money  钱不够 <br/>"   ;
                        // $ttmoney =$dd - $money;//红包余额
                        $id = $re[$i]->r_id;//当前红包id
                        // $time = $re[$i]->time;//当前红包id
                        $sql01="insert into lkt_red_packet_record(r_id,openid,money,time,type) " .
                        "values('$id','$openid','$money','$datetime','2')";//给拆红包的人添加信息到红包消费记录表里
                    $re01 = $db->insert($sql01);
                    break;
                   }
                }
                $res = array('succ' => '扣款成功!','status'=>true);
                echo json_encode($res);
                exit;
            }
        }

    }

  /** 制作商品分享带参数二维码
   　@param $product_img string 产品图片　
     @param $qr_code string 二维码图片
     @param $logo float logo图片   　
     @param $price string 价格
     @param $yprice string 原价
     @param $bottom_img float 底图
     @param $product_title string 产品标题
     @param $path string 分享的路径
     @param $id string 分享的id
     @param $type string 海报的类型-1商城海报 2小店海报 3商品海报 4关注海报
     return json
   */

    public function product_share(){
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();

        $product_img =$request->getParameter('product_img_path');
        $str_r = trim(strrchr($product_img, '/'),'/');
        if($str_r){
          $product_img = $str_r;
        }
        $type =$request->getParameter('type');
        $product_title =$request->getParameter('product_title');
        if(strlen($product_title)>18){
            $product_title = mb_substr($product_title, 0, 18, 'utf-8').'...';
        } 
        $pid =$request->getParameter('pid');
        $price =$request->getParameter('price');
        $yprice =$request->getParameter('yprice');
        $nickname =$request->getParameter('nickname');
        $head = $request->getParameter('head');
        //默认底图和logo
        $logo ='../LKT/images/ditu/logo.png';


        $path = $request->getParameter('path');
        $id = $request->getParameter('id');
       //定义固定分享图片储存路径 以便删除
        $imgDir = 'product_share_img/';
        $sql = "select * from lkt_config where id=1";
        $r = $db->select($sql);
        if($r){
            $appid = $r[0]->appid; // 小程序唯一标识
            $appsecret = $r[0]->appsecret; // 小程序的 app secret
            $uploadImg_domain = $r[0]->uploadImg_domain; // 图片上传域名
            $uploadImg = $r[0]->uploadImg; // 图片上传位置
            if(strpos($uploadImg,'../') === false){ // 判断字符串是否存在 ../
                $img = $uploadImg_domain . $uploadImg; // 图片路径
            }else{ // 不存在
                $img = $uploadImg_domain . substr($uploadImg,2); // 图片路径
            }
            $product_img = $uploadImg.$product_img;
            $font_file  = substr($uploadImg_domain,strripos($uploadImg_domain,"/")+1);
            // define("FONT_ROOT", substr($uploadImg_domain,strripos($uploadImg_domain,"/")+1));
        }

        $pic = $id.'-'.$pid.'-'.$type.'-ewm.jpg';
        if(is_file($uploadImg.$imgDir.$pic)) {
            $url=$img.$imgDir.$pic;
            echo json_encode(array('status' => true,'url' => $url));
            exit;
        }

        $tkt_sql = "select * from lkt_extension where type ='$type' and isdefault='1' ";
        $tkt_r = $db->select($tkt_sql);
        if(empty($tkt_r)){
                $tkt_sql = "select * from lkt_extension where type ='$type'";
                $tkt_r = $db->select($tkt_sql);
                if(empty($tkt_r)){
                    $url=$img.$imgDir.'img.jpg';
                    echo json_encode(array('status' => true,'url' => $url));
                    exit;   
                }
        }
        if($type == '1'){
            //文章
            if(!empty($r)){
                $bottom_img = $uploadImg.$tkt_r[0]->bg;
                $data = $tkt_r[0]->data;
            }
            
        }else if($type == '2'){
            //红包
            if(!empty($r)){
                $bottom_img = $uploadImg.$tkt_r[0]->bg;
                $data = $tkt_r[0]->data;
            }
        }else if($type == '3'){
            //商品
            if(!empty($r)){
                $bottom_img = $uploadImg.$tkt_r[0]->bg;
                $data = $tkt_r[0]->data;
            }
        }else{
            //待定
           echo "string4"; //
        }
        //head' style="margin-bottom: 4px">头像
        //nickname' style="margin-bottom: 4px">昵称
        //qr' style="margin-bottom: 4px">二维码
        //img' style="margin-bottom: 4px">图片
        //title' >商品名称 
        //thumb' >商品图片 
        //marketprice' >商品现价    
        //productprice' >商品原价

        //创建底图   
        $dest = $this->create_imagecreatefromjpeg($bottom_img);
        $datas = json_decode($data);
        foreach ($datas as $key => $value) {
            $data = [];
            // $data =$this->getRealData((array)$value);
            foreach ($value as $k => $v) {
                if($k=='left' ||$k=='top' ||$k=='width' ||$k=='height'||$k=='size'){
                   $v =  intval(str_replace('px', '',$v)) * 2;
                }
                $data[$k] = $v;
            }
           if($value->type == 'head'){
                $this->write_img($dest,$data,$head);
           }else if($value->type == 'nickname'){
                $dest = $this->write_text($dest,$data,$product_title,$font_file);
           }else if($value->type == 'qr'){
                $AccessToken = $this->getAccessToken($appid, $appsecret);
                $share_qrcode = $this->get_share_qrcode($path,$value->width,$id,$AccessToken);
                $dest =  $this->write_img($dest,$data,$share_qrcode);
           }else if($value->type == 'img'){
                if($value->src){
                   $imgs =  $uploadImg.$value->src;
                   $dest =  $this->write_img($dest,$data,$imgs);                 
                }
           }else if($value->type == 'title'){
                //标题
                $dest = $this->write_text($dest,$data,$product_title,$font_file);
           }else if($value->type == 'thumb'){
                //商品图合成
                $dest = $this->write_img($dest,$data,$product_img);
           }else if($value->type == 'marketprice'){
                //价格
                $product_title = '￥'.$price;
                $dest = $this->write_text($dest,$data,$product_title,$font_file);  
           }else if($value->type == 'productprice'){
                //原价
                $product_title = '￥'.$yprice;
                $dest = $this->write_text($dest,$data,$product_title,$font_file);
                $shanchuxian = '—';
                for ($i=0; $i < (strlen($product_title)-3)/4;$i++) { 
                    $shanchuxian .= $shanchuxian ;
                }
                $dest = $this->write_text($dest,$data,$shanchuxian,$font_file);

           }
        }

        // header("content-type:image/jpeg");
        imagejpeg($dest,$uploadImg.$imgDir.$pic);
        $url=$img.$imgDir.$pic;
        echo json_encode(array('status' => true,'url' => $url));
        exit;
    }
    //创建图片 根据类型
    public function create_imagecreatefromjpeg($pic_path)
    {           
          $pathInfo = pathinfo($pic_path);
          if(array_key_exists('extension',$pathInfo)){
              switch( strtolower($pathInfo['extension']) ) { 
               case 'jpg': 
               case 'jpeg': 
                $imagecreatefromjpeg = 'imagecreatefromjpeg';
               break; 
               case 'png': 
                $imagecreatefromjpeg = 'imagecreatefrompng'; 
               break; 
               case 'gif': 
               default: 
                $imagecreatefromjpeg = 'imagecreatefromstring'; 
                $pic_path = file_get_contents($pic_path); 
               break; 
              }            
          }else{
            $imagecreatefromjpeg = 'imagecreatefromstring'; 
            $pic_path = file_get_contents($pic_path); 
          }
          $im = $imagecreatefromjpeg($pic_path);
          return $im;
    }

    public function getRealData($data)
    {
        $data['left']   = intval(str_replace('px', '', $data['left'])) * 2;
        $data['top']    = intval(str_replace('px', '', $data['top'])) * 2;
        $data['width']  = intval(str_replace('px', '', $data['width'])) * 2;
        $data['height'] = intval(str_replace('px', '', $data['height'])) * 2;
        
        if($data['size']){
            $data['size']   = intval(str_replace('px', '', $data['size'])) * 2;
        }
        if($data['src']){
            $data['src']    = tomedia($data['src']);
        }
        
        return $data;
    }
    
    public function write_img($target, $data, $imgurl)
    {   
        $img = $this->create_imagecreatefromjpeg($imgurl);
        $w   = imagesx($img);
        $h   = imagesy($img);
        imagecopyresized($target, $img, $data['left'], $data['top'], 0, 0, $data['width'], $data['height'], $w, $h);
        imagedestroy($img);
        return $target;
    }

    function autowrap($fontsize, $angle, $fontface, $string, $width) {
        // 参数分别是 字体大小, 角度, 字体名称, 字符串, 预设宽度
        $content = "";
        // 将字符串拆分成一个个单字 保存到数组 letter 中
        preg_match_all("/./u", $string, $arr); 
        $letter = $arr[0];
        foreach($letter as $l) {
            $teststr = $content.$l;
            $testbox = imagettfbbox($fontsize, $angle, $fontface, $teststr);
            if (($testbox[2] > $width) && ($content !== "")) {
                $content .= PHP_EOL;
            }
            $content .= $l;
        }
        return $content;
    }

    public function write_text($dest, $data, $string,$fontfile)
    {
        
        if($data['type'] == 'title'){
            $width = imagesx($dest)-$data['left']*2;
        }else{
            $width = imagesx($dest)*2;
        }
        $font_file = ($_SERVER['DOCUMENT_ROOT']).'/'.$fontfile.'/LKT/images/simhei.ttf';
        $colors = $this->hex2rgb($data['color']);
        $color  = imagecolorallocate($dest,$colors['red'], $colors['green'], $colors['blue']);//背景色
        $string = $this->autowrap($data['size'], 0, $font_file, $string,$width);
        $fontsize = $data['size'];
        imagettftext($dest,$fontsize,0,$data['left'], $data['top'],$color,$font_file,$string);
        return $dest;
    }

    function hex2rgb($colour)
    {
        if ($colour[0] == '#') {
            $colour = substr($colour, 1);
        }
        if (strlen($colour) == 6) {
            list($r, $g, $b) = array(
                $colour[0] . $colour[1],
                $colour[2] . $colour[3],
                $colour[4] . $colour[5]
            );
        } elseif (strlen($colour) == 3) {
            list($r, $g, $b) = array(
                $colour[0] . $colour[0],
                $colour[1] . $colour[1],
                $colour[2] . $colour[2]
            );
        } else {
            return false;
        }
        $r = hexdec($r);
        $g = hexdec($g);
        $b = hexdec($b);
        return array(
            'red' => $r,
            'green' => $g,
            'blue' => $b
        );
    }

    //将颜色代码转rgb
    function wpjam_hex2rgb($hex) {
       $hex = str_replace("#", "", $hex);
     
       if(strlen($hex) == 3) {
          $r = hexdec(substr($hex,0,1).substr($hex,0,1));
          $g = hexdec(substr($hex,1,1).substr($hex,1,1));
          $b = hexdec(substr($hex,2,1).substr($hex,2,1));
       } else {
          $r = hexdec(substr($hex,0,2));
          $g = hexdec(substr($hex,2,2));
          $b = hexdec(substr($hex,4,2));
       }
     
       return array($r, $g, $b);
    }

    //获得二维码
    public function get_share_qrcode($path,$width,$id,$AccessToken) {
        // header('content-type:image/jpeg');  测试时可打开此项 直接显示图片
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        // 查询系统参数
        $sql = "select * from lkt_config where id = 1";
        $r_1 = $db->select($sql);
        $uploadImg_domain = $r_1[0]->uploadImg_domain; // 图片上传域名
        $uploadImg = $r_1[0]->uploadImg; // 图片上传位置
        if(strpos($uploadImg,'../') === false){ // 判断字符串是否存在 ../
            $img = $uploadImg_domain . $uploadImg; // 图片路径
        }else{ // 不存在
            $img = $uploadImg_domain . substr($uploadImg,2); // 图片路径
        }
        $pid = $request->getParameter('pid');
        $path_name = str_replace('/','_',$path);
        $filename= $path_name.'_share_'.$id.'_'.$pid.'.jpeg';///   
        $imgDir = 'product_share_img/';
        $width = 430;
        //要生成的图片名字
        $newFilePath = $uploadImg.$imgDir.$filename;
        if(is_file($newFilePath)){
            return $newFilePath; 
        }else{
            $scene = $request->getParameter('scene');
            //获取三个重要参数 页面路径  图片宽度  文章ID
            //--B $arr = ["page"=> $path, "width"=>$width,'scene'=>$scene];
            //--A
            $arr = ["path"=> $path.'?'.$scene, "width"=>$width];
            $data = json_encode($arr);
            //把数据转化JSON 并发送
            // 接口A: 适用于需要的码数量较少的业务场景 接口地址：
            $url = 'https://api.weixin.qq.com/wxa/getwxacode?access_token=' . $AccessToken;
            // 接口B：适用于需要的码数量极多的业务场景
            // $url = 'https://api.weixin.qq.com/wxa/getwxacodeunlimit?access_token=' . $AccessToken;
            // 接口C：适用于需要的码数量较少的业务场景
            // $url = 'https://api.weixin.qq.com/cgi-bin/wxaapp/createwxaqrcode?access_token=' . $AccessToken;
            //获取二维码API地址

            $da = $this->httpsRequest($url,$data);
            //发送post带参数请求 
            // header('content-type:image/jpeg');
            $newFile = fopen($newFilePath,"w"); //打开文件准备写入
            fwrite($newFile,$da); //写入二进制流到文件
            fclose($newFile); //关闭文件
            return $newFilePath;  
        }
     
    }
        function getAccessToken($appID, $appSerect) {
            $url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=".$appID."&secret=".$appSerect;
            // 时效性7200秒实现
            // 1.当前时间戳
            $currentTime = time();
            // 2.修改文件时间
            $fileName = "accessToken"; // 文件名
            if(is_file($fileName)) {
                $modifyTime = filemtime($fileName);
                if(($currentTime - $modifyTime) < 7200) {
                    // 可用, 直接读取文件的内容
                    $accessToken = file_get_contents($fileName);
                    return $accessToken;
                }
            }
            // 重新发送请求
            $result = $this-> httpsRequest($url);
            $jsonArray = json_decode($result, true);
            // 写入文件
            $accessToken = $jsonArray['access_token'];
            file_put_contents($fileName, $accessToken);
            return $accessToken;
    }

    function httpsRequest($url, $data=null) {
        // 1.初始化会话
        $ch = curl_init();
        // 2.设置参数: url + header + 选项
        // 设置请求的url
        curl_setopt($ch, CURLOPT_URL, $url);
        // 保证返回成功的结果是服务器的结果
        curl_setopt($ch,CURLOPT_SSL_VERIFYPEER,FALSE);
        curl_setopt($ch,CURLOPT_SSL_VERIFYHOST,FALSE);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        if(!empty($data)) {
            // 发送post请求
            curl_setopt($ch, CURLOPT_POST, 1);
            // 设置发送post请求参数数据
            curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        }
        // 3.执行会话; $result是微信服务器返回的JSON字符串
        $result = curl_exec($ch);
        // 4.关闭会话
        curl_close($ch);
        return $result;
    }
    
    //生成红包文字
    function madeCode(){
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $id =trim($request->getParameter('id'));
        $wx_id =$request->getParameter('openid');
        // 查询公司名称
        $sql = "select * from lkt_config where id=1";
        $r = $db->select($sql);
        $company = $r[0]->company;
        $instring = $company.'给你发红包啦';

        echo json_encode(array('status'=>1,'text'=>$instring));
        exit();
        return;
    }

     //生成推广图片
    function getPromotion($name,$ditu,$x,$y,$wx_id,$kuan = 300){
        $db = DBAction::getInstance();
        $sql_w = "select user_id from lkt_user where wx_id='".$wx_id.'\'';
        $r_w = $db->select($sql_w);
        //信息准备
        $userid = $r_w[0]->user_id;
        // $dest = imagecreatefromjpeg('../LKT/images/bottom/img01.jpg');  //底图1 http://127.0.0.1:8080/LKT/images/1523861937693.jpeg
        $dest = imagecreatefromjpeg($ditu);  //底图1
        $dirName = '../LKT/images/';
        $headfilename = 'logo.jpg';
        $filename = '';
        //取得二维码图片文件名称
        $erweima = $this->code();

        /*带参数二维码图片是否已经存在*/
        if(file_exists($dirName.$erweima)){
            $filename = $erweima;
        }else{
            $ch = curl_init ();
            curl_setopt ( $ch, CURLOPT_CUSTOMREQUEST, 'GET' );
            curl_setopt ( $ch, CURLOPT_SSL_VERIFYPEER, false );
            curl_setopt ( $ch, CURLOPT_URL, $filename );
            ob_start ();
            curl_exec ( $ch );
            $headfile = ob_get_contents ();
            ob_end_clean ();
            if(!file_exists($dirName)){
            mkdir($dirName, 0777, true);
            }
            //保存文件
            $res = fopen($dirName.$erweima,'a');
            fwrite($res,$headfile);
            fclose($res);
            $filename = $erweima;
        }
        // exit;
        /*二维码组合底图1*/
        $src = imagecreatefromjpeg($dirName.$filename);
        list($width, $height, $type, $attr) = getimagesize($dirName.$filename);
        $image=imagecreatetruecolor($kuan, $kuan);
        imagecopyresampled($image, $src, 0, 0, 0, 0, $kuan, $kuan, $width,$height);
        imagecopymerge($dest, $image,$x, $y, 0, 0, $kuan, $kuan, 100);
        // /*end 二维码*/$x, $y,$wx_id 20, 580
            
        // /* 图片组合完成 保存图片 */
        $pic = $userid.$name.'tui.jpg';
        $res = imagejpeg($dest,$dirName.$pic);
        $url='http://'.$_SERVER['HTTP_HOST'].'/duan/LKT/images/'.$pic;/* end 保存*/
        return $url;
    }
    function createPromotion (){
        $url = [];
         $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $wx_id =$request->getParameter('openid');

        $sql = "select image,x,y,kuan from lkt_extension ";
        $r = $db->select($sql);
        if ($r) {
            foreach ($r as $key => $value) {
                $str = $value->image;
                $img =  str_replace("/duan/","../",$str);
                $img_url = $this->getPromotion($key+1,$img,$value->x,$value->y,$wx_id,$value->kuan);
                $url[$key] = array('hpcontent_id' => $key+1,'hp_img_url' => $img_url);
            }
        }
        echo json_encode(array('status'=>1,'pictures'=>$url));
        exit;
    }

   
}

?>