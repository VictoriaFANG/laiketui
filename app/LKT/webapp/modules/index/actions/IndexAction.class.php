<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */
require_once(MO_LIB_DIR . '/DBAction.class.php');
require_once(MO_LIB_DIR . '/ShowPager.class.php');
require_once(MO_LIB_DIR . '/Tools.class.php');
require_once(MO_LIB_DIR . '/version.php');
class IndexAction extends Action {
// getContext() 检索当前应用程序上下文。
// getRequest() 检索请求。
// getStorage() 检索存储。
// setAttribute() 设置一个属性。
	// 获取用户名
	public function getDefaultView() {
		$db=DBAction::getInstance();
		$request = $this->getContext()->getRequest();	
		$admin_id = $this->getContext()->getStorage()->read('admin_id');

        $version = LKT_VERSION;

        $upgrade= $request->getParameter('upgrade');//升级
        if($upgrade){
            $this->upgrade();
        }

        $sql = " select login_num,login_ip,login_time from ntb_admin where admin_id = '$admin_id' limit 1 ";
        $r = $db -> select($sql);
        //状态查询
        $mon = date("Y-m");//当前月份
         //得到系统的年月  
        $tmp_date=date("Ym");  
        //切割出年份  
        $tmp_year=substr($tmp_date,0,4);  
        //切割出月份  
        $tmp_mon =substr($tmp_date,4,2);  
        $tmp_forwardmonth=mktime(0,0,0,$tmp_mon-1,1,$tmp_year);  
        //得到当前月的上一个月   
         $lastmon=date("Y-m",$tmp_forwardmonth);
         //今天
         $today = date("Y-m-d");
         //昨天
        $yesterday= date("Y-m-d",strtotime("-1 day"));
        //qiantian
        $qiantian= date("Y-m-d",strtotime("-2 day"));
        $sitian= date("Y-m-d",strtotime("-3 day"));
        $wutian= date("Y-m-d",strtotime("-4 day"));
        //liutian
        $liutian= date("Y-m-d",strtotime("-5 day"));
        //qitian
        $qitian= date("Y-m-d",strtotime("-6 day"));

         $today1 = date("m-d");
         //昨天
        $yesterday1= date("m-d",strtotime("-1 day"));
        //qiantian
        $qiantian1= date("m-d",strtotime("-2 day"));
        $sitian1= date("m-d",strtotime("-3 day"));
        $wutian1= date("m-d",strtotime("-4 day"));
        //liutian
        $liutian1= date("m-d",strtotime("-5 day"));
        //qitian
        $qitian1= date("m-d",strtotime("-6 day"));

        //--待付款
        $dfk_sql = "select num from lkt_order where status = 0";
        $dfk = $db -> selectrow($dfk_sql);
        //--待发货
        $dfh_sql = "select num from lkt_order where status = 1";
        $dp = $db -> selectrow($dfh_sql);
        //--待收货
        $dsh_sql = "select num from lkt_order where status = 2";
        $yth = $db -> selectrow($dsh_sql);
        //待评价订单 
        $pj_sql = "select num from lkt_order where status = 3";
        $pj = $db -> selectrow($pj_sql);

        //退货订单 
        $th_sql = "select num from lkt_order where status = 4";
        $th = $db -> selectrow($th_sql);
         //已完成订单 
        $wc_sql = "select num from lkt_order where status = 5";
        $wc = $db -> selectrow($wc_sql);

        //当日的营业额
        $day_sql = "select sum(z_price) as z_price from lkt_order where add_time like '$today%' and status > 0 and status <> 4 ";
        $day01 = $db -> select($day_sql);
        $day_yy01 = $day01[0] -> z_price ;
        $day_yy =$day_yy01?$day_yy01:0;
        //昨天的营业额
        $yessql = "select sum(z_price) as z_price from lkt_order where add_time like '$yesterday%' and status > 0 and status <> 4 ";
        $yes01 = $db -> select($yessql);
        $yes_yy = $yes01[0] -> z_price ;
        //营业额百分比
        if($yes_yy > 0){
            $yingye_day = round(($day_yy-$yes_yy)/$yes_yy *100 , 2)."%";
        }else{
             $yingye_day = '0';
        }
    
        //当日的总订单
        $day_dd = "select num from lkt_order where add_time like '$today%' and status > 0";
        $daydd = $db -> selectrow($day_dd);

        //昨天的总订单
        $yes_dd = "select num from lkt_order where add_time like '$yesterday%' and status > 0";
        $yesdd = $db -> selectrow($yes_dd);

        //订单百分比
        if($yesdd > 0){
            $dingdan_day = round(($daydd-$yesdd)/$yesdd *100 , 2)."%";
        }else{
            $dingdan_day = '0';
        }

        //这个月的营业额
        $tyye_sql = "select sum(z_price) as z_price from lkt_order where add_time like '$mon%' and status > 0 and status <> 4 ";
        $tm001 = $db -> select($tyye_sql);
        $tm0101 = $tm001[0] -> z_price ;
        $tm01 = $tm0101?$tm0101:0;
        //上个月的营业额
        $tyye_sql01 = "select sum(z_price) as z_price from lkt_order where add_time like '$lastmon%' and status > 0 and status <> 4 ";
        $latm001 = $db -> select($tyye_sql01);
        $latm01 = $latm001[0] -> z_price ;
        //营业额百分比
        if($latm01 > 0){
            $yingye = round(($tm01-$latm01)/$latm01 *100 , 2)."%";
        }else{
             $yingye = '0';
        }

    
        //这个月的总订单
        $tm_sql = "select num from lkt_order where add_time like '$mon%' and status > 0";
        $tm = $db -> selectrow($tm_sql);

        //上个月的总订单
        $latm_sql = "select num from lkt_order where add_time like '$lastmon%' and status > 0";
        $latm = $db -> selectrow($latm_sql);

        //订单百分比
        if($latm > 0){
            $dingdan = round(($tm-$latm)/$latm *100 , 2)."%";
        }else{
             $dingdan = '0';
        }

        //累计营业额
        $tyye_sql01 = "select sum(z_price) as z_price from lkt_order where  status > 0 and status <> 4";
        $tm002 = $db -> select($tyye_sql01);
        $tm0202 = $tm002[0] -> z_price ;
        $tm02 = $tm0202?$tm0202:0;
        //累计订单数
        $latm_sql01 = "select num from lkt_order where  status > 0";
        $leiji_dd = $db -> selectrow($latm_sql01);

        //最近购买 24小时内
        $oldday = date("Y-m-d H:i:s",strtotime("-1 day")) ;
        $sql = "select * from lkt_order_details where add_time > '$oldday'";

        // '状态 0：未付款 1：未发货 2：待收货 3：待评论 4：退货 5:已完成 6 订单关闭 9拼团中 10 拼团失败-未退款 11 拼团失败-已退款';
        $re = $db -> select($sql);

        if(!empty($re)){
            foreach ($re as $key => $value) {
                $data['r_status'] =$value->r_status;
                $r_sNo =$value->r_sNo;
                $sql0005 = "select drawid,otype from lkt_order where sNo = '$r_sNo'";
                $re0005 = $db -> select($sql0005);
                if($re0005){
                        $re[$key] ->drawid = $re0005[0]->drawid;
                        $re[$key] ->otype = $re0005[0]->otype;
                        $data1['r_status'] = stripslashes($data['r_status']);
                        switch ( $data1['r_status']) {
                          case '0':
                              $re[$key] ->r_status1 = '未付款';
                              break;
                          case '1':
                              $re[$key] ->r_status1 = '未发货';
                              break;
                          case '2':
                              $re[$key] ->r_status1 = '已发货';
                              break;
                          case '3':
                              $re[$key] ->r_status1 = '待评论';
                              break;
                          case '4':
                              $re[$key] ->r_status1 = '退货';
                              break;
                          case '5':
                              $re[$key] ->r_status1 = '退货';
                              break;
                          case '6':
                              $re[$key] ->r_status1 = '订单关闭';
                              break;
                          case '9':
                              $re[$key] ->r_status1 = '拼团中';
                              break;
                          case '10':
                              $re[$key] ->r_status1 = '拼团失败-未退款';
                              break;
                          case '11':
                              $re[$key] ->r_status1 = '拼团失败-已退款';
                              break;
                          default:
                              $re[$key] ->r_status1 = '已签收';
                              break;
                        }
                }
            }
        }
         
        //会员总数
        $couhuiyuan_sql = "select id from lkt_user ";
        $couhuiyuan= $db -> selectrow($couhuiyuan_sql);
        
        $couhuiyuan_sql01 = "select id from lkt_user where Register_data like '$today%'";
        $couhuiyuan01= $db -> selectrow($couhuiyuan_sql01);

        $couhuiyuan_sql02 = "select id from lkt_user where Register_data like '$yesterday%'";
        $couhuiyuan02= $db -> selectrow($couhuiyuan_sql02);

        $couhuiyuan_sql03 = "select id from lkt_user where Register_data like '$qiantian%'";
        $couhuiyuan03= $db -> selectrow($couhuiyuan_sql03);

        $couhuiyuan_sql04 = "select id from lkt_user where Register_data like '$sitian%'";
        $couhuiyuan04= $db -> selectrow($couhuiyuan_sql04);

        $couhuiyuan_sql05 = "select id from lkt_user where Register_data like '$wutian%'";
        $couhuiyuan05= $db -> selectrow($couhuiyuan_sql05);

        $couhuiyuan_sql06 = "select id from lkt_user where Register_data like '$liutian%'";
        $couhuiyuan06= $db -> selectrow($couhuiyuan_sql06);
 
        $couhuiyuan_sql07 = "select id from lkt_user where Register_data like '$qitian%'";
        $couhuiyuan07= $db -> selectrow($couhuiyuan_sql07);
        $notice = "select * from lkt_set_notice order by time desc";
        $res_notice= $db -> select($notice);

        $sql_uploadImg = "select * from lkt_config where id = '1'";
        $r_sql_uploadImg = $db->select($sql_uploadImg);
        $uploadImg = $r_sql_uploadImg[0]->uploadImg; // 图片上传位置
        $request->setAttribute("uploadImg",$uploadImg);//--待付款
        $request->setAttribute("version",$version);
        $request->setAttribute("dfk",$dfk);//--待付款 
        $request->setAttribute("dp",$dp);//--待发货
        $request->setAttribute("yth",$yth);//--待收货
        $request->setAttribute("pj",$pj);//评价订单 
        $request->setAttribute("th",$th);//退货订单
        $request->setAttribute("wc",$wc);//完成订单 
        $request->setAttribute("day_yy",$day_yy); //当日的营业额
        $request->setAttribute("yingye_day",$yingye_day);//当日的营业额百分比
        $request->setAttribute("daydd",$daydd);//当日的总订单
        $request->setAttribute("dingdan_day",$dingdan_day);//当日的订单百分比
        $request->setAttribute("tm01",$tm01);//这个月的营业额
        $request->setAttribute("tm",$tm);//这个月的总订单
        $request->setAttribute("tm02",$tm02);//累计营业额
        $request->setAttribute("leiji_dd",$leiji_dd);//累计订单数
        $request->setAttribute("re",empty($re)? 0:$re);//最近购买
        $request->setAttribute("yingye",$yingye);//营业额百分比
        $request->setAttribute("dingdan",$dingdan);//订单百分比
        $request->setAttribute("couhuiyuan01",$couhuiyuan01);//1
        $request->setAttribute("couhuiyuan02",$couhuiyuan02);//2
        $request->setAttribute("couhuiyuan03",$couhuiyuan03);//3
        $request->setAttribute("couhuiyuan04",$couhuiyuan04);//4
        $request->setAttribute("couhuiyuan05",$couhuiyuan05);//5
        $request->setAttribute("couhuiyuan06",$couhuiyuan06);//6
        $request->setAttribute("couhuiyuan07",$couhuiyuan07);//7
        $request->setAttribute("today",$today1);//1
        $request->setAttribute("yesterday",$yesterday1);//2
        $request->setAttribute("qiantian",$qiantian1);//3
        $request->setAttribute("sitian",$sitian1);//4
        $request->setAttribute("wutian",$wutian1);//5
        $request->setAttribute("liutian",$liutian1);//6
        $request->setAttribute("qitian",$qitian1);//7
        $request->setAttribute("res_notice",$res_notice);//7
        $request->setAttribute("couhuiyuan",$couhuiyuan);//7
       
		return View :: INPUT;
	}

	public function execute(){		
		
	}

	public function getRequestMethods(){
		return Request :: NONE;
	}

    function httpsRequest($url, $data=null) {
        // 1.初始化会话
        $ch = curl_init();
        // 2.设置参数: url + header + 选项
        // 设置请求的url
        curl_setopt($ch, CURLOPT_URL, $url);
        // 保证返回成功的结果是服务器的结果
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        // https请求 不验证证书和hosts
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE); 
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($ch,CURLOPT_USERAGENT,"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)"); //模拟浏览器代理
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

    public function upgrade()
    {
        $db=DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $version = LKT_VERSION;
        $url = 'https://open.laiketui.com/a15a744a5ca77d41baa9d4f272f45dfd/LKT/index.php?module=api&action=upgrade&type=2&software_version=2&version='.$version;
        $vres = $this -> httpsRequest($url,$version);
        $aaa = json_decode($vres);
        $status = $aaa->status;
        $lkt_web_version = $aaa->version;
        
        $download = $request->getParameter('download'); // 下载更新包
        if($download){
            //校验版本
            if($version < $lkt_web_version){
                //判断是否下载过
                if(is_file('../lkt_update_'.$lkt_web_version.'.zip')){
                    echo "1";
                }else{
                    $down_url = $aaa->url;
                    $file_res = $this->curlDownFile($down_url,'../','lkt_update_'.$lkt_web_version.'.zip');
                    if($file_res){
                        echo "1";
                    }else{
                       echo "0";
                    }
                }

            }else{
                echo "0";
            } 
            
            exit;
        }

        if($version != $lkt_web_version){
           $detail = $aaa->detail;
           $arrayName = array('status' => 1,'version' => $version,'lkt_web_version' => $lkt_web_version,'detail' => $detail);
           echo json_encode($arrayName);
        }else{
           $arrayName = array('status' => 0,'version' => $version);
           echo json_encode($arrayName);
        }
        exit;
    }

     /**
     * @param string $down_url 下载文件地址
     * @param string $save_path 下载文件保存目录
     * @param string $filename 下载文件保存名称
     * @return bool
    */
    function curlDownFile($down_url, $save_path = '', $filename = '') {
        if (trim($down_url) == '') {
            return false;
        }
        if (trim($save_path) == '') {
            $save_path = '../';
        }

        //创建保存目录
        if (!file_exists($save_path) && !mkdir($save_path, 0777, true)) {
            return false;
        }
        if (trim($filename) == '') {
            $img_ext = strrchr($down_url, '.');
            $img_exts = array('.zip');
            if (!in_array($img_ext, $img_exts)) {
                return false;
            }
            $filename = time() . $img_ext;
        }

        // curl下载文件
        $ch = curl_init();
        $timeout = 5;
        curl_setopt($ch, CURLOPT_URL, $down_url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        // https请求 不验证证书和hosts
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE); 
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($ch,CURLOPT_USERAGENT,"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)"); //模拟浏览器代理
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
        $file = curl_exec($ch);
        curl_close($ch);

        // 保存文件到制定路径
        // file_put_contents($filename, $file);
        //保存文件
        ob_start ();
        // $headfile = ob_get_contents ();
        ob_end_clean ();
        //保存文件
        $res = fopen($save_path.$filename,'w+');
        fwrite($res,$file);
        fclose($res);

        unset($file, $url);
        return true;
    }

}

?>