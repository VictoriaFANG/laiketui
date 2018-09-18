<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */
class rechargeInputView extends SmartyView {
    public function execute() {
		$request = $this->getContext()->getRequest();
		$this->setAttribute("user_id",$request->getAttribute("user_id"));
		$this->setAttribute("list",$request->getAttribute("list"));
		$this->setAttribute("page",$request->getAttribute("page"));
		$pageto = $request->getAttribute('pageto');
		if($pageto != ''){
			$r = rand();
			header("Content-type: application/msexcel;charset=utf-8");
			header("Content-Disposition: attachment;filename=userlist-$r.xls");
			$this->setTemplate("r_excel.tpl");
		} else {
			$this->setTemplate('recharge.tpl');
		}
    }
}
?>
