<?php

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */
require_once(MO_LIB_DIR . '/version.php');
class IndexAction extends Action {

	public function getDefaultView() {
		$request = $this->getContext()->getRequest();
		
		$userid = $this->getContext()->getStorage()->read('_user_id');
        $admin_id = $this->getContext()->getStorage()->read('_admin_id');
        $version = LKT_VERSION;
        $request->setAttribute('version',$version);
		$request->setAttribute('userID',$userid);
        $request->setAttribute('admin_id',$admin_id);
		return View :: INPUT;
	}

	public function execute(){

	}

	public function getRequestMethods(){
		return Request :: NONE;
	}

}

?>