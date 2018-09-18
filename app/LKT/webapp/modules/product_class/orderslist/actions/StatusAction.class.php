<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */

require_once(MO_LIB_DIR . '/DBAction.class.php');

require_once(MO_LIB_DIR . '/ShowPager.class.php');

require_once(MO_LIB_DIR . '/Tools.class.php');



class StatusAction extends Action {



    public function getDefaultView() {

        $db = DBAction::getInstance();

        $request = $this->getContext()->getRequest();



        $beizhu = addslashes(trim($request -> getParameter('admin')));

        $sNo = addslashes(trim($request -> getParameter('sNo')));

        $trade = intval($request -> getParameter('trade'));



        $sqll = 'update lkt_order set status='.$trade.'where sNo="'.$sNo.'"';

        $rl = $db -> update($sqll);

        $sqld = 'update lkt_order_detail set status='.$trade.'where sNo="'.$sNo.'"';

        $rd = $db -> update($sqld);

        echo $sqll;

        var_dump($sqld);

        echo '345345345';

        return View :: INPUT;

    }



    public function execute() {

        

        

    }



    public function getRequestMethods(){

        return Request :: POST;

    }



}



?>