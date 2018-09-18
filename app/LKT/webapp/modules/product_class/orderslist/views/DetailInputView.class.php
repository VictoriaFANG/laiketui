<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */

class DetailInputView extends SmartyView {

	

    public function execute() {

		$request = $this->getContext()->getRequest();

		$this->setAttribute("uploadImg",$request->getAttribute("uploadImg"));

		$this->setAttribute("detail",$request->getAttribute("detail"));

		$this->setAttribute("data",$request->getAttribute("data"));

		$this->setAttribute("express",$request->getAttribute("express"));

        $this->setTemplate("detail.tpl");

    }

}

?>