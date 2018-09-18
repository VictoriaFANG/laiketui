<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */
/**
 * [Laike System] Copyright (c) 2018 laiketui.com
 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.
 */
require_once(MO_LIB_DIR . '/DBAction.class.php');
require_once(MO_LIB_DIR . '/Tools.class.php');

class uploadImgAction extends Action {

    public function getDefaultView() {
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
       
        return View :: INPUT;
    }

    public function execute(){

        $request = $this->getContext()->getRequest();
        $db = DBAction::getInstance();
        
        // 查询配置表信息
        $sql = "select * from lkt_config where id = '1'";
        $r = $db->select($sql);
        $uploadImg = $r[0]->uploadImg;  // 图片上传位置
        
        if(empty($uploadImg)){
            $uploadImg = "../LKT/images";
        }
        if(is_dir($uploadImg) == ''){ // 如果文件不存在
            mkdir($uploadImg); // 创建文件
        }
        $imgURL=($_FILES['imgFile']['tmp_name']);
        $type = str_replace('image/', '.', $_FILES['imgFile']['type']);
        $imgURL_name=time().mt_rand(1,1000).$type;
       
        move_uploaded_file($imgURL,$uploadImg.$imgURL_name);
        $image = $uploadImg . $imgURL_name;

        echo json_encode(array("error"=>0,"url"=>$image));
        return;
    }

    public function getRequestMethods(){
        return Request :: POST;
    }

}
?>