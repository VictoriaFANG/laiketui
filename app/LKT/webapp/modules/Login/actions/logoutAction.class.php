<?php
/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */

/**

 * [Laike System] Copyright (c) 2018 laiketui.com

 * Laike is not a free software, it under the license terms, visited http://www.laiketui.com/ for more details.

 */

require_once (MO_LIB_DIR . '/DBAction.class.php');

class logoutAction extends Action {

	public function getDefaultView() {

		$db = DBAction::getInstance();

		$request = $this -> getContext() -> getRequest();

		$this -> getContext() -> getUser() -> setAuthenticated(false);

		$name = $_SESSION['admin_id'];

		$sql = "insert into lkt_record (user_id,event) values ('$name','安全退出成功')";

		$r = $db -> insert($sql);

		$_SESSION = array();

		/***删除sessin id.由于session默认是基于cookie的，所以使用setcookie删除包含session id的cookie.***/

		if (isset($_COOKIE[session_name()])) {

			setcookie(session_name(), '', time() - 42000, '/');

		}

		// 最后彻底销毁session.

		session_destroy();

		if ($r) {

			$this -> getContext() -> getController() -> redirect("index.php");

		}

		return;

	}

	public function execute() {

	}

	public function getRequestMethods() {

		return Request::NONE;

	}

}
?>