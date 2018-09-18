<?php

/**
 * [Laike System] Copyright (c) 2018 laiketui.com
 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.
 */
require_once(MO_LIB_DIR . '/DBAction.class.php');
require_once(MO_LIB_DIR . '/ShowPager.class.php');
require_once(MO_LIB_DIR . '/Tools.class.php');

class IndexAction extends Action
{
    /*
    时间2018年03月13日
    修改内容：修改产品分类显示
    修改人：苏涛
    主要功能：处理后台所以产品显示
    公司：湖南壹拾捌号网络技术有限公司
    */
    public function getDefaultView()
    {
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $name = addslashes(trim($request->getParameter('name'))); // 标题

        $condition = ' 1=1 ';
        if($name != ''){
            $condition .= " and name like '%$name%' ";
        }
        $sql = "select * from lkt_freight where $condition";
        $r = $db->select($sql);
        if($r){
            $list = $r;
        }else{
            $list = [];
        }

        $request->setAttribute("name", $name);
        $request->setAttribute("list", $list);
        return View :: INPUT;
    }

    public function execute()
    {

    }

    public function getRequestMethods()
    {
        return Request :: NONE;
    }

}

?>