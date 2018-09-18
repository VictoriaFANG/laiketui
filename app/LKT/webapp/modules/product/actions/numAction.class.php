<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */
require_once(MO_LIB_DIR . '/DBAction.class.php');
require_once(MO_LIB_DIR . '/ShowPager.class.php');
require_once(MO_LIB_DIR . '/Tools.class.php');

class numAction extends Action {
    /*
    时间2018年03月13日
    修改内容：修改产品分类显示
    修改人：苏涛
    主要功能：处理后台库存
    公司：湖南壹拾捌号网络技术有限公司
     */
    public function getDefaultView() {
        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();
        $status = addslashes(trim($request->getParameter('cid'))); // 状态
        $product_title = addslashes(trim($request->getParameter('product_title'))); // 标题
//        echo "<pre>";
        $arr=[];
        $condition = ' 1=1 ';
        if($status != ''){
            $condition .= " and a.status like '%$status%' ";
        }

        if($product_title != ''){
            $condition .= " and a.product_title like '%$product_title%' ";
        }
        $sql = 'select a.id,a.product_title,a.imgurl,a.sort,a.add_date,a.status from lkt_product_list AS a  LEFT JOIN lkt_configure AS c ON a.id = c.pid '." where $condition ".' and c.num < 1 order by a.sort,c.id ';
        $r = $db->select($sql);
        if($r) {
            $arr = [];
            foreach ($r as $key => $value) {
                $id = $value->id;
                $arr1[$value->id] = $value;
            }
            foreach ($arr1 as $k => $v){
                $id = $v->id;
                $sql = "select id as attribute_id,attribute,price from lkt_configure where pid = '$id' and num < 1";
                $rr = $db->select($sql);
                if($rr){
//                    print_r($rr);
//                    echo "<br>";
                    $res = array();
                    foreach ($rr as $k1 => $v1){
                        $price[$k1] = $v1->price;
                        $rew = '[';
                        $attribute_2 = unserialize($rr[$k1]->attribute); // 属性
                        foreach ($attribute_2 as $k => $v){
                            $rew .= ' ' . $v . ' ';
                        }
                        $rew .= ']';
                        $res[] = $rew;
                    }
                    $min = min($price);
                    $max = max($price);
                    if($min == $max){
                        $present_price = $max;
                    }else{
                        $present_price = $min . '-' . $max;
                    }
                    $arr1[$id]->price = $present_price;
                }
                $arr1[$id]->res = $res;
            }
            $arr = $arr1;
//            print_r($arr);
      }

      $sql = "select * from lkt_config where id = '1'";
      $r = $db->select($sql);
      $uploadImg = $r[0]->uploadImg; // 图片上传位置
      $request->setAttribute("uploadImg",$uploadImg);
      $request->setAttribute("product_title",$product_title);
//      $request->setAttribute("class",$res);
      $request->setAttribute("list",$arr);

      return View :: INPUT;
    }

    public function execute() {

    }

    public function getRequestMethods(){
        return Request :: NONE;
    }

    public function product_chang()
    {
      $db = DBAction::getInstance();
      $request = $this->getContext()->getRequest();
      $status = addslashes(trim($request->getParameter('status'))); // 标题
      $cgid = addslashes(trim($request->getParameter('id')));
      $sql = " update lkt_configure SET status = '$status' WHERE id ='$cgid'; ";
      $res = $db->update($sql);
      return $res;

    }

}

?>