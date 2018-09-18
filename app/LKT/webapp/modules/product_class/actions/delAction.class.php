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
        // 获取分类id
        $cid = intval($request->getParameter('cid'));
        $uploadImg = addslashes(trim($request->getParameter('uploadImg'))); // 图片路径
        // 根据分类id,查询产品分类表
        $sql = "select * from lkt_product_class where cid = '$cid'";
        $r = $db->select($sql);
        $img = $r[0]->img;
        @unlink ($uploadImg.$img);
        // 根据分类id,删除这条数据
        $sql = "delete from lkt_product_class where cid = '$cid'";
        $res=$db->delete($sql);
		if($res){
			header("Content-type:text/html;charset=utf-8");
	        echo "<script type='text/javascript'>" .
	            "alert('删除成功！');" .
	            "location.href='index.php?module=product_class';</script>";
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