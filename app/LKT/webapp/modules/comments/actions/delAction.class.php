<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */

require_once(MO_LIB_DIR . '/DBAction.class.php');

require_once(MO_LIB_DIR . '/ShowPager.class.php');

require_once(MO_LIB_DIR . '/Tools.class.php');



class delAction extends Action {



    public function getDefaultView() {



    }



    public function execute() {

        $db = DBAction::getInstance();

        $request = $this->getContext()->getRequest();

        // 接收信息

        $id = intval($request->getParameter('id')); 

        $sql = "delete from lkt_comments where id = '$id'";

        $res = $db->delete($sql);

        echo $res;

        exit;

    }



    public function getRequestMethods(){

        return Request :: POST;

    }



}



?>