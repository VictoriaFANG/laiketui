<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */

class addproductInputView extends SmartyView {

    public function execute() {

		$request = $this->getContext()->getRequest();

		$this->setAttribute("arr",$request->getAttribute("arr"));

		$this->setAttribute("set",$request->getAttribute("set")); 	 

		$this->setTemplate("addproduct.tpl");

    }

}

?>