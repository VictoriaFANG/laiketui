<?php
class IndexInputView extends SmartyView {
    public function execute() {
		$request = $this->getContext()->getRequest();
		$this->setAttribute("uploadImg",$request->getAttribute("uploadImg"));
		$this->setAttribute("list",$request->getAttribute("list"));
		$this->setTemplate("index.tpl");
    }
}
?>
