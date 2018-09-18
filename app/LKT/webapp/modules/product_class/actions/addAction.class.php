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

		// 根据上级id为0,查询产品分类id、上级id、分类名称

		$sql = "select cid,sid,pname from lkt_product_class where sid = 0";

		$r = $db->select($sql);

		$asd = '';

		foreach($r as $k=>$v){

            $cid = $v->cid; // 分类id

            $sid = $v->sid; // 上级id

            $pname = $v->pname; // 分类名称

            $asd .=  "<option  value='$cid'>$pname</option>";

            $sql_e = "select cid,sid,pname from lkt_product_class where sid = $cid";

			$r_e = $db->select($sql_e);

			foreach ($r_e as $key => $value) {

				$asd .=  "<option  value='$value->cid'>--$value->pname</option>";

				$sql = "select cid,sid,pname from lkt_product_class where sid = '$value->cid'";

				$rr = $db->select($sql);

				foreach ($rr as $key => $value) {

					$asd .=  "<option value='$value->cid'>----$value->pname</option>";

				}

			}

		}

		

		$request->setAttribute("uploadImg",$uploadImg);

		$request->setAttribute("ctype",$asd);

		return View :: INPUT;

	}



	public function execute(){

		$db = DBAction::getInstance();

        $request = $this->getContext()->getRequest();

        // 获取分类名称和排序号

        $pname = addslashes(trim($request->getParameter('pname'))); // 分类名称

        $sid = addslashes(trim($request->getParameter('product_class'))); // 产品类别

        $image = addslashes(trim($request->getParameter('image'))); // 图片

        $bg = addslashes(trim($request->getParameter('bg'))); // 展示图片

		$sort = floatval(trim($request->getParameter('sort'))); // 排序

		

		if($image){

            $image = preg_replace('/.*\//','',$image);

        }
		if($bg){

            $bg = preg_replace('/.*\//','',$bg);

        }
		//检查分类名称是否重复

        $sql = "select * from lkt_product_class where pname = '$pname'";

		$r = $db->select($sql);

		// 如果有数据 并且 数据条数大于0

        if ($r && count($r) > 0) {

            header("Content-type:text/html;charset=utf-8");

            echo "<script type='text/javascript'>" .

                "alert('产品分类 {$pname} 已经存在，请选用其他名称！');" .

                "</script>";

            return $this->getDefaultView();

        }

		//添加分类

		$sql = "insert into lkt_product_class(pname,sid,img,bg,sort,add_date) values('$pname','$sid','$image','$bg','$sort',CURRENT_TIMESTAMP)";
        // echo $sql;exit;
		$r = $db->insert($sql);

		if($r == -1) {

			header("Content-type:text/html;charset=utf-8");

			echo "<script type='text/javascript'>" .

				"alert('未知原因，添加产品分类失败！');" .

				"</script>";

			return $this->getDefaultView();

		} else {

			header("Content-type:text/html;charset=utf-8");

			echo "<script type='text/javascript'>" .

				"alert('添加产品分类成功！');" .

				"location.href='index.php?module=product_class';</script>";

			return $this->getDefaultView();

		}

		

		return;

	}



	public function getRequestMethods(){

		return Request :: POST;

	}



	public function menu_merge($data,$parent_id=0,$level=1){

		$res = array();

		foreach ($data as $v) {

			if($v['sid']==$parent_id){

				$v['level'] = $level;

				$v['disabled'] = false;

				$res[]=$v;

				$res = array_merge($res,menu_merge($data,$v['id'],$level+1));

			}

		}

		return $res;

	}





}



?>