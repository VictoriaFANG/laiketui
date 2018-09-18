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
        $id = $request->getParameter('id'); // 产品id
        $num = 0;
        $id = rtrim($id, ','); // 去掉最后一个逗号
        $id = explode(',',$id); // 变成数组

        foreach ($id as $k => $v){
            // 根据产品id，删除产品信息
            $sql = "delete from lkt_product_list where id = '$v'";
            $db->delete($sql);

            $sql = "delete from lkt_configure where pid = '$v'";
            $db->delete($sql);

            $sql = "delete from lkt_product_img where product_id = '$v'";
            $db->delete($sql);
        }

        $res = array('status' => '1','info'=>'成功！');
        echo json_encode($res);
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