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
        $product_class = addslashes(trim($request->getParameter('cid'))); // 分类名称
        $brand_id = addslashes(trim($request->getParameter('brand_id'))); // 品牌id
        $status = addslashes(trim($request->getParameter('status'))); // 上下架
        $s_type = addslashes(trim($request->getParameter('s_type'))); // 类型
        $product_title = addslashes(trim($request->getParameter('product_title'))); // 标题

        $sql = "select cid,pname from lkt_product_class where sid = 0 ";
        $rr = $db->select($sql);
        $res = '';
        foreach ($rr as $key => $value) {
            $c = '-' . $value->cid . '-';
            //判断所属类别 添加默认标签
            if ($product_class == $c) {
                $res .= '<option selected="selected" value="' . $c . '">' . $value->pname . '</option>';
            } else {
                $res .= '<option  value="' . $c . '">' . $value->pname . '</option>';
            }
            //循环第一层
            $sql_e = "select cid,pname from lkt_product_class where sid = $value->cid";
            $r_e = $db->select($sql_e);
            if ($r_e) {
                $hx = '-----';
                foreach ($r_e as $ke => $ve) {
                    $cone = $c . $ve->cid . '-';
                    //判断所属类别 添加默认标签
                    if ($product_class == $cone) {
                        $res .= '<option selected="selected" value="' . $cone . '">' . $hx . $ve->pname . '</option>';
                    } else {
                        $res .= '<option  value="' . $cone . '">' . $hx . $ve->pname . '</option>';
                    }
                    //循环第二层
                    $sql_t = "select cid,pname from lkt_product_class where sid = $ve->cid";
                    $r_t = $db->select($sql_t);
                    if ($r_t) {
                        $hxe = $hx . '-----';
                        foreach ($r_t as $k => $v) {
                            $ctow = $cone . $v->cid . '-';
                            //判断所属类别 添加默认标签
                            if ($product_class == $ctow) {
                                $res .= '<option selected="selected" value="' . $ctow . '">' . $hxe . $v->pname . '</option>';
                            } else {
                                $res .= '<option  value="' . $ctow . '">' . $hxe . $v->pname . '</option>';
                            }
                        }
                    }
                }
            }
        }
        $sql = "select * from lkt_brand_class";
        $rr1 = $db->select($sql);
        $rew = '<option value="" >全部</option>';
        foreach ($rr1 as $key => $value) {
            if ($brand_id == $value->brand_id) {
                $rew .= "<option selected='selected' value='" . $value->brand_id . "'>$value->brand_name</option>";
            } else {
                $rew .= "<option value='" . $value->brand_id . "'>$value->brand_name</option>";
            }
        }
        $condition = ' 1=1 ';
        if ($product_class != '') {
            $condition .= " and product_class like '%$product_class%' ";
        }
        if ($brand_id != '') {
            $condition .= " and brand_id like '$brand_id' ";
        }
        if ($status != '') {
            $condition .= " and status like '$status' ";
        }
        if ($s_type != '') {
            $condition .= " and s_type like '%$s_type%' ";
        }
        if ($product_title != '') {
            $condition .= " and product_title like '%$product_title%' ";
        }
        $sql = "select * from lkt_product_list where $condition" . ' order by status asc,add_date desc ';
        $r = $db->select($sql);
        $list = [];
        foreach ($r as $key => $value) {
            $pid = $value->id;
            $class = $value->product_class;
            $value->s_type = explode(',',$value->s_type);
            $typestr = trim($class, '-');
            $typeArr = explode('-', $typestr);
            //  取数组最后一个元素 并查询分类名称
            $cid = end($typeArr);
            $sql_p = "select pname from lkt_product_class where cid ='" . $cid . "'";
            $r_p = $db->select($sql_p);
            if ($r_p) {
                $pname = $r_p['0']->pname;
            } else {
                $pname = '顶级';
            }

//        $sql = "select unit,price,name,color,size,id from lkt_configure where pid = '$pid'";
            $sql = "select unit,price from lkt_configure where pid = '$pid'";
            $r_s = $db->select($sql);
            if ($r_s) {
//            foreach ($r_s as $k_1 => $v_1){
//                $name = $v_1->name;
//                $color = $v_1->color;
//                $size = $v_1->size;
//                $attribute1 = array('类型'=>$name,'颜色'=>$color,'规格'=>$size);
//                $attribute = serialize($attribute1);
//                $sql = "update lkt_configure set attribute = '$attribute' where id = '$v_1->id'";
//                $db->update($sql);
//            }
                $unit = $r_s[0]->unit;
                foreach ($r_s as $k1 => $v1) {
                    $price[$k1] = $v1->price;
                }
                $min = min($price);
                $max = max($price);
                if ($min == $max) {
                    $present_price = $max;
                } else {
                    $present_price = $min . '-' . $max;
                }
            } else {
                $unit = '';
                $present_price = 0;
            }

            $value->unit = $unit;
            $value->price = $present_price;
            foreach ($value as $k => $v) {
                $arr[$k] = $v;
            }
            $arr['pname'] = $pname;

            $list[$key] = (object)$arr;
        }
        foreach ($list as $key01 => $value01) {
            if (!empty($value01->brand_id)) {
                $sql01 = "select brand_name from lkt_brand_class where brand_id ='" . $value01->brand_id . "'";
                $r01 = $db->select($sql01);
                $list[$key01]->brand_name = $r01[0]->brand_name;
            }
        }

        $sql = "select * from lkt_config where id = '1'";
        $r = $db->select($sql);
        $uploadImg = $r[0]->uploadImg; // 图片上传位置
        $request->setAttribute("uploadImg", $uploadImg);
        $request->setAttribute("product_title", $product_title);
        $request->setAttribute("class", $res);
        $request->setAttribute("rew", $rew);
        $request->setAttribute("s_type", $s_type);
        $request->setAttribute("status", $status);
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