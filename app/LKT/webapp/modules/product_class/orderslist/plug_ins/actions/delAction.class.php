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
        // 接收信息
        $id = intval($request->getParameter('id')); // 插件id
        $uploadImg = addslashes(trim($request->getParameter('uploadImg'))); // 图片路径

        // 根据插件id,查询插件
        $sql = "select * from lkt_plug_ins where id = '$id'";
        $r = $db->select($sql);
        $image = $r[0]->image;
        @unlink ($uploadImg.$image);
        // 根据轮播图id，删除轮播图信息
        $sql = "delete from lkt_plug_ins where id = '$id'";
        $db->delete($sql);
        header("Content-type:text/html;charset=utf-8");
        echo "<script type='text/javascript'>" .
            "alert('删除成功！');" .
            "location.href='index.php?module=plug_ins';</script>";
        return;
    }

    public function execute(){
        return $this->getDefaultView();
    }

    public function getRequestMethods(){
        return Request :: NONE;
    }

}

?>