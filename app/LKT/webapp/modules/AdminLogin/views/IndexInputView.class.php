<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */
class IndexInputView extends SmartyView {
// setTemplate() 为该视图设置模板。
    public function execute() {
		$request = $this->getContext()->getRequest();
		$this->setAttribute('version',$request->getAttribute('version'));
		$this->setAttribute('userID',$request->getAttribute('userID'));
        $this->setAttribute('admin_id',$request->getAttribute('admin_id'));
		$this->setTemplate("index.tpl");
    }
}
?>