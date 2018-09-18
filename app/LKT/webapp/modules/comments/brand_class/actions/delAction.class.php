<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */
require_once(MO_LIB_DIR . '/DBAction.class.php');

class delAction extends Action {

    public function getDefaultView() {
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $brand_id = intval($request->getParameter('cid')); // 品牌id
        $uploadImg = addslashes(trim($request->getParameter('uploadImg'))); // 图片上传位置
        $sql = "select * from lkt_brand_class where brand_id = '$brand_id'";
        $r = $db->select($sql);
        $brand_pic = $r[0]->brand_pic;
        @unlink ($uploadImg.$brand_pic);
        // 获取分类id
        $brand_id = intval($request->getParameter('cid'));
        // 根据分类id,删除这条数据
        $sql = "delete from lkt_brand_class where brand_id = '$brand_id'";
        $res=$db->delete($sql);
		if($res){
			header("Content-type:text/html;charset=utf-8");
	        echo "<script type='text/javascript'>" .
	            "alert('删除成功！');" .
	            "location.href='index.php?module=brand_class';</script>";
	        return;
		}else{
	        header("Content-type:text/html;charset=utf-8");
	        echo "<script type='text/javascript'>" .
	            "alert('删除失败！');" .
	            "</script>";
	        return;
		}
    }

    public function execute(){
        return $this->getDefaultView();
    }

    public function getRequestMethods(){
        return Request :: NONE;
    }
}
?>