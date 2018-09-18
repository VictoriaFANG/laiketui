<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */

class modifyInputView extends SmartyView {

    public function execute() {

		$request = $this->getContext()->getRequest();

        $this->setAttribute('password',$request->getAttribute('password'));

        $this->setAttribute('name',$request->getAttribute('name'));

        $this->setAttribute('id',$request->getAttribute('id'));

        $this->setAttribute('permission',$request->getAttribute('permission'));



			 

		$this->setTemplate("modify.tpl");

    }

}

?>