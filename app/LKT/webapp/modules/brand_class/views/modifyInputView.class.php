<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */

class modifyInputView extends SmartyView {

    public function execute() {

		$request = $this->getContext()->getRequest();

        $this->setAttribute('brand_id',$request->getAttribute('brand_id'));

        $this->setAttribute('uploadImg',$request->getAttribute('uploadImg'));

        $this->setAttribute('brand_name', $request->getAttribute('brand_name'));

        $this->setAttribute('brand_pic', $request->getAttribute('brand_pic'));

		$this->setTemplate("modify.tpl");

    }

}

?>