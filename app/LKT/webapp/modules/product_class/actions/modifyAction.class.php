<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */

require_once(MO_LIB_DIR . '/DBAction.class.php');



class modifyAction extends Action {



	public function getDefaultView() {



        $db = DBAction::getInstance();

        $request = $this->getContext()->getRequest();

        // 接收分类id

        $cid_r = intval($request->getParameter("cid")); // 分类id

        $uploadImg = addslashes(trim($request->getParameter('uploadImg'))); // 图片上传位置

        // 根据分类id,查询产品分类表

        $sql = "select * from lkt_product_class where cid = '$cid_r'";

        $r = $db->select($sql);

        if($r){

            $pname_r = $r[0]->pname; // 分类名称

            $sid_r = $r[0]->sid; // 上级id

            $img_r = $r[0]->img; // 分类图片

            $bg = $r[0]->bg; // 分类图片

            $sort_r = $r[0]->sort; // 分类排序

        }

        if($sid_r != 0 ){

            $sql = "select cid,pname from lkt_product_class where cid = $sid_r";

            $r = $db->select($sql);

            $rname = $r[0]->pname;

        }else{

            $rname = $pname_r;

        }

        

        $sql = "select cid,sid,pname from lkt_product_class where sid = 0";

        $r = $db->select($sql);

        $asd = '';

        foreach($r as $k=>$v){

            $cid = $v->cid;

            $sid = $v->sid;

            $pname = $v->pname;
            if($sid_r == $v->cid){
                $asd .=  "<option selected='selected' value='$cid'>$pname</option>";
            }else{
                $asd .=  "<option  value='$cid'>$pname</option>";
            }
            

            $sql_e = "select cid,sid,pname from lkt_product_class where sid = $cid";

            $r_e = $db->select($sql_e);

            foreach ($r_e as $key => $value) {

                if($sid_r == $value->cid){
                    $asd .=  "<option selected='selected' value='$value->cid'>--$value->pname</option>";
                }else{
                   $asd .=  "<option  value='$value->cid'>--$value->pname</option>";
                }

                $sql = "select cid,sid,pname from lkt_product_class where sid = '$value->cid'";

                $rr = $db->select($sql);

                foreach ($rr as $keys => $values) {
                    if($sid_r == $value->cid){
                        $asd .=  "<option selected='selected' value='$values->cid'>----$values->pname</option>";
                    }else{
                       $asd .=  "<option value='$values->cid'>----$values->pname</option>";
                    }
                    

                }

            }

        }

        $request->setAttribute("ctype",$asd);

        $request->setAttribute('cid_r', $cid_r);

        $request->setAttribute('uploadImg', $uploadImg);

        $request->setAttribute('pname', isset($pname_r) ? $pname_r : '');

        $request->setAttribute('rname', isset($rname) ? $rname : '');

        $request->setAttribute('img', isset($img_r) ? $img_r : '');

        $request->setAttribute('bg', isset($bg) ? $bg : '');

        $request->setAttribute('sort', isset($sort_r) ? $sort_r : '');



		return View :: INPUT;

	}



	public function execute(){

		$db = DBAction::getInstance();

		$request = $this->getContext()->getRequest();

		$cid = trim($request->getParameter('cid')); // 分类id

        $uploadImg = addslashes(trim($request->getParameter('uploadImg'))); // 图片上传位置

        $pname = addslashes(trim($request->getParameter('pname'))); // 分类名称

        $product_class = trim($request->getParameter('product_class')); // 产品类别

        $image = addslashes(trim($request->getParameter('image'))); // 分类新图片

        $oldpic = addslashes(trim($request->getParameter('oldpic'))); // 分类原图片

        $sort = floatval(trim($request->getParameter('sort'))); // 排序

        $bg = addslashes(trim($request->getParameter('bg'))); // 展示图片

        $oldpicbg = addslashes(trim($request->getParameter('oldpicbg'))); // 分类原图片
        
        if($image){

            $image = preg_replace('/.*\//','',$image);

            if($image != $oldpic){

                @unlink ($uploadImg.$oldpic);

            }

        }else{

            $image = $oldpic;

        }

        if($bg){

            $bg = preg_replace('/.*\//','',$bg);

            if($bg != $oldpicbg){

                @unlink ($uploadImg.$oldpicbg);

            }

        }else{

            $bg = $oldpicbg;

        }

        //检查分类名是否重复

        $sql = "select cid from lkt_product_class where pname = '$pname' and cid <> '$cid'";

        $r = $db->select($sql);

        if ($r) {

            header("Content-type:text/html;charset=utf-8");

            echo "<script type='text/javascript'>" .

                "alert('产品分类 {$pname} 已经存在，请选用其他名称修改！');" .

                "</script>";

            return $this->getDefaultView();

        }

        if ($product_class==$cid) {

            header("Content-type:text/html;charset=utf-8");

            echo "<script type='text/javascript'>" .

                "alert('不能把本分类放置在自身分类下！');" .

                "</script>";

            return $this->getDefaultView();
            exit;

        }

		//更新分类列表

		$sql = "update lkt_product_class " .

			"set pname = '$pname',img = '$image',bg = '$bg',sid = '$product_class', sort = '$sort'"

			." where cid = '$cid'";

		$r = $db->update($sql);



		if($r == -1) {

		echo "<script type='text/javascript'>" .

				"alert('未知原因，修改产品分类失败！');" .

				"location.href='index.php?module=product_class';</script>";

			return $this->getDefaultView();

		} else {

			header("Content-type:text/html;charset=utf-8");

			echo "<script type='text/javascript'>" .

				"alert('修改产品分类成功！');" .

				"location.href='index.php?module=product_class';</script>";

		}

		return;

	}



	public function getRequestMethods(){

		return Request :: POST;

	}



}



?>