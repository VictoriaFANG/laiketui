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
        $sql = "select * from lkt_config where id = '1'";
        $r = $db->select($sql);
        $uploadImg = $r[0]->uploadImg; // 图片上传位置
        // 查询新闻分类表，根据sort顺序排列
        $sql = "select * from lkt_product_class where sid = 0 order by sort desc";
        $rr = $db->select($sql);
        $list = [];
        foreach ($rr as $key => $value) {
           array_push($list, $value);
           $list = $this->category($list,$value->cid,$key);
        }

        // var_dump($list);exit;
        $request->setAttribute("list",$list);
        $request->setAttribute("uploadImg",$uploadImg);
        return View :: INPUT;
    }

    public function category($list,$cid,$k,$num = 1)
    {
        $num++;
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        // 查询分类表，根据sort顺序排列
        $sql = "select * from lkt_product_class where sid = '$cid' order by sort,cid";
        $rr = $db->select($sql);
        foreach ($rr as $key => $value) {
           $str = '|——';
           for ($i=0; $i < $num; $i++) { 
              $str .= '——————';
           }
           $value->str = $str;
           array_push($list, $value);
           $sql = "select * from lkt_product_class where sid = '$value->cid' order by sort,cid";
           $rs = $db->select($sql);
           if($rs){
               $list = $this->category($list,$value->cid,$k,$num+1);
           }
        }

        return $list;
    }

    public function execute() {

    }

    public function getRequestMethods(){
        return Request :: NONE;
    }

}

?>