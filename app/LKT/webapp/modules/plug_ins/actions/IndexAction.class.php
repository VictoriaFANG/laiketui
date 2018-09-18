<?php
require_once(MO_LIB_DIR . '/DBAction.class.php');
require_once(MO_LIB_DIR . '/ShowPager.class.php');
require_once(MO_LIB_DIR . '/Tools.class.php');

class IndexAction extends Action {

    public function getDefaultView() {
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $sql = "select * from lkt_config where id = '1'";
        $r = $db->select($sql);
        $uploadImg = $r[0]->uploadImg; // 图片上传位置
        // 查询插件表
        $sql = "select * from lkt_plug_ins";
        $r = $db->select($sql);
        if($r){
            foreach ($r as $k => $v) {
                if(strstr($v->name,'优惠劵') == true){
                    $v->http = 'coupon';
                }
                if(strstr($v->name,'钱包') == true){
                    $v->http = 'finance';
                }
                if(strstr($v->name,'签到') == true){
                    $v->http = 'sign';
                }
                if(strstr($v->name,'抽奖') == true){
                    $v->http = 'draw';
                }
                if(strstr($v->name,'拆红包') == true){
                    $v->http = 'dismantling_envelopes';
                }
                if(strstr($v->name,'砍价') == true){
                    $v->http = 'bargain';
                }
                if(strstr($v->name,'拼团') == true){
                    $v->http = 'go_group';
                }
                if(strstr($v->name,'发红包') == true){
                    $v->http = 'red_packet';
                }
                $software_id = $v->software_id;
                $sql = "select id,name from lkt_software where id = '$software_id'";
                $rr = $db->select($sql);
                $v->software_id = $rr[0]->id;
                $v->software_name = $rr[0]->name;
            }
        }
        $request->setAttribute("uploadImg",$uploadImg);
        $request->setAttribute("list",$r);

        return View :: INPUT;
    }

    public function execute() {

    }

    public function getRequestMethods(){
        return Request :: NONE;
    }

}

?>