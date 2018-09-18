<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */

class modifyInputView extends SmartyView {

    public function execute() {
		$request = $this->getContext()->getRequest();
        $this->setAttribute('ctypes',$request->getAttribute('ctypes'));
        $this->setAttribute('s_type',$request->getAttribute('s_type'));
        $this->setAttribute('product_class',$request->getAttribute('product_class'));
        $this->setAttribute('id',$request->getAttribute('id'));
        $this->setAttribute('product_title',$request->getAttribute('product_title'));
        $this->setAttribute('subtitle',$request->getAttribute('subtitle'));
        $this->setAttribute('brand_name',$request->getAttribute('brand_name'));
        $this->setAttribute('r02',$request->getAttribute('r02'));
        $this->setAttribute("uploadImg",$request->getAttribute("uploadImg"));
        $this->setAttribute('sort',$request->getAttribute('sort'));
        $this->setAttribute('keyword',$request->getAttribute('keyword'));
        $this->setAttribute('content',$request->getAttribute('content'));
        $this->setAttribute('num',$request->getAttribute('num'));
        $this->setAttribute('imgurl',$request->getAttribute('imgurl'));
        $this->setAttribute('imgurls',$request->getAttribute('imgurls'));
        $this->setAttribute('attribute',$request->getAttribute('attribute'));
        $this->setAttribute('attribute1',$request->getAttribute('attribute1'));
        $this->setAttribute('rer',$request->getAttribute('rer'));
        $this->setAttribute('rew',$request->getAttribute('rew'));
        $this->setAttribute('attribute_key',$request->getAttribute('attribute_key'));
        $this->setAttribute('attribute_key2',$request->getAttribute('attribute_key2'));
        $this->setAttribute('attribute_val',$request->getAttribute('attribute_val'));
        $this->setAttribute('freight_list',$request->getAttribute('freight_list'));
		$this->setTemplate("modify.tpl");
    }
}
?>