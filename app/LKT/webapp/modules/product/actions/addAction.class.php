<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */

require_once(MO_LIB_DIR . '/DBAction.class.php');



class addAction extends Action {

	public function getDefaultView() {

        $db = DBAction::getInstance();
        $request = $this->getContext()->getRequest();

        $sql = "select * from lkt_config where id = '1'";
        $r = $db->select($sql);
        $uploadImg = $r[0]->uploadImg; // 图片上传位置

        //获取产品类别
        $sql = "select cid,pname from lkt_product_class where sid = 0 ";
        $r = $db->select($sql);
        $res = '';
        foreach ($r as $key => $value) {
            $c = '-'.$value->cid.'-';
            $res .= '<option  value="-'.$value->cid.'-">'.$value->pname.'</option>';
            //循环第一层
            $sql_e = "select cid,pname from lkt_product_class where sid = $value->cid";
            $r_e = $db->select($sql_e);
            if($r_e){
                $hx = '-----';
                foreach ($r_e as $ke => $ve){
                   $cone = $c . $ve->cid.'-';
                   $res .= '<option  value="'.$cone.'">'.$hx.$ve->pname.'</option>';
                   //循环第二层
                   $sql_t = "select cid,pname from lkt_product_class where sid = $ve->cid";
                   $r_t = $db->select($sql_t);
                    if($r_t){
                        $hxe = $hx.'-----';
                        foreach ($r_t as $k => $v){
                           $ctow = $cone . $v->cid.'-';
                           $res .= '<option  value="'.$ctow.'">'.$hxe.$v->pname.'</option>';
                        }
                    }
                }
            }
        }

        $sql01 = "select brand_id ,brand_name from lkt_brand_class";
        $r01 = $db->select($sql01);

        $sql = "select * from lkt_freight order by add_time desc";
        $rr = $db->select($sql);

        $request->setAttribute("uploadImg",$uploadImg);
        $request->setAttribute("ctype",$res);
        $request->setAttribute("brand",$r01);
        $request->setAttribute("freight",$rr);
		return View :: INPUT;
	}



	public function execute(){
		$db = DBAction::getInstance();
		$request = $this->getContext()->getRequest();
        // 接收数据
        $attribute = $request->getParameter('attribute'); // 属性
        $uploadImg = addslashes(trim($request->getParameter('uploadImg'))); // 图片路径
        $product_title = addslashes(trim($request->getParameter('product_title'))); // 产品标题
        $subtitle = addslashes(trim($request->getParameter('subtitle'))); // 小标题
        $product_class = addslashes(trim($request->getParameter('product_class'))); // 产品类别
        $brand_id = addslashes(trim($request->getParameter('brand_class'))); // 品牌
        $keyword = addslashes(trim($request->getParameter('keyword'))); // 关键词
        $s_type = $request->getParameter('s_type'); // 显示类型
        $sort = floatval(trim($request->getParameter('sort'))); // 排序
        $content = addslashes(trim($request->getParameter('content'))); // 产品内容
        $image = addslashes(trim($request->getParameter('image'))); // 产品图片
        $freight = $request->getParameter('freight'); // 运费
        $arr = json_decode($attribute,true);

		if($product_title == ''){
            echo "<script type='text/javascript'>" .
                "alert('产品名称不能为空！');" .
                "location.href='index.php?module=product&action=add';</script>";
            return $this->getDefaultView();
        }else{
            $sql = "select * from lkt_product_list";
            $r = $db->select($sql);
            if($r){
                foreach ($r as $k => $v){
                    if($product_title == $v->product_title){
                        echo "<script type='text/javascript'>" .
                            "alert('产品名称不能为空！');" .
                            "location.href='index.php?module=product&action=add';</script>";
                        return $this->getDefaultView();
                    }
                }
            }
        }
        if($product_class == ''){
            echo "<script type='text/javascript'>" .
                "alert('产品类别不能为空！');" .
                "location.href='index.php?module=product&action=add';</script>";
            return $this->getDefaultView();
        }
        if($brand_id == ''){
            echo "<script type='text/javascript'>" .
                "alert('请选择品牌！');" .
                "location.href='index.php?module=product&action=add';</script>";
            return $this->getDefaultView();
        }
        if($keyword == ''){
            echo "<script type='text/javascript'>" .
                "alert('请填写关键词！');" .
                "location.href='index.php?module=product&action=add';</script>";
            return $this->getDefaultView();
        }
        $z_num = 0;
        if(count($arr) == 0){
            echo "<script type='text/javascript'>" .
                "alert('请填写属性！');" .
                "location.href='index.php?module=product&action=add';</script>";
            return $this->getDefaultView();
        }else{
            foreach ($arr as $ke => $va){
                $z_num = $z_num+$va['数量'];
            }
        }

        if(count($s_type) == 0){
            $type = 0;
        }else{
            $type = implode(",", $s_type);
        }
        if($sort == ''){
            echo "<script type='text/javascript'>" .
                "alert('排序不能没空！');" .
                "location.href='index.php?module=product&action=add';</script>";
            return $this->getDefaultView();
        }

        if($image){
            $image = preg_replace('/.*\//','',$image); // 产品主图
        }else{
            echo "<script type='text/javascript'>" .
                "alert('产品主图不能没空！');" .
                "location.href='index.php?module=product&action=add';</script>";
            return $this->getDefaultView();
        }
        // 发布产品
        $sql = "insert into lkt_product_list(product_title,subtitle,product_class,brand_id,keyword,imgurl,sort,content,num,s_type,add_date,freight) " .
            "values('$product_title','$subtitle','$product_class','$brand_id','$keyword','$image','$sort','$content','$z_num','$type',CURRENT_TIMESTAMP,'$freight')";
        // echo $sql;exit;
        $id1 = $db->insert($sql,'last_insert_id'); // 得到添加数据的id
        if($id1){
            $files=($_FILES['imgurls']['tmp_name']);
            if($files[0]){
                foreach($files as $key => $file){
                    $img_type = $_FILES['imgurls']["type"][$key];
                    if($img_type == "image/png"){
                        $img_type = ".png";
                    }elseif ($img_type == "image/jpeg") {
                        $img_type = ".jpg";
                    }else{
                        $img_type = ".gif";
                    }
                    $imgURL_name = time().mt_rand(1,100).$img_type;
                    //重命名结束
                    $info = move_uploaded_file($file,$uploadImg.$imgURL_name);
                    if($info){
                        //循环遍历插入
                        $sql_img = "insert into lkt_product_img(product_url,product_id,add_date) " . "values('$imgURL_name','$id1',CURRENT_TIMESTAMP)";
                        $id2 = $db->insert($sql_img,'last_insert_id');
                    }
                }
            }

            $r_num = 0;
            foreach ($arr as $ke => $va){
                $costprice = $va['成本价'];
                $yprice = $va['原价'];
                $price = $va['现价'];
                $num = $va['数量'];
                $unit = $va['单位'];
                $img = trim(strrchr($va['图片'], '/'),'/');
                for ( $i = 0;$i < 6;$i++){
                    array_pop($va);
                }
                $attribute_1 = $va;
                $attribute = serialize($attribute_1);

                $sql = "insert into lkt_configure(costprice,yprice,price,img,pid,num,unit,attribute) values('$costprice','$yprice','$price','$img','$id1','$num','$unit','$attribute')";
                $r_attribute = $db->insert($sql);

                if($r_attribute > 0){
                    $r_num = $r_num + 1;
                }else{
                    $r_num = $r_num;
                }
            }

            if($r_num == count($arr)){
                header("Content-type:text/html;charset=utf-8");
                echo "<script type='text/javascript'>" .
                    "alert('产品发布成功！');" .
                    "location.href='index.php?module=product';</script>";
                return $this->getDefaultView();
            }else{
                $sql = "delete from lkt_product_list where id = '$id1'";
                $db->delete($sql);

                $sql = "delete from lkt_product_img where product_id = '$id1'";
                $db->delete($sql);

                $sql = "delete from lkt_product_attribute where pid = '$id1'";
                $db->delete($sql);
                header("Content-type:text/html;charset=utf-8");
                echo "<script type='text/javascript'>" .
                    "alert('未知原因，产品发布失败1！');" .
                    "</script>";
                return $this->getDefaultView();
            }
        }else{
            header("Content-type:text/html;charset=utf-8");
            echo "<script type='text/javascript'>" .
                "alert('未知原因，产品发布失败2！');" .
                "</script>";
            return $this->getDefaultView();
        }
	    return;
	}

	public function getRequestMethods(){
		return Request :: POST;
	}
}
?>