<?php
require_once dirname(__FILE__).'/../../Firebase.extern.php';

class action_method_RoomCreateMethod {
	public function __construct($roomModel) { if(!php_Boot::$skip_constructor) {
		$firebase = new Firebase(Main::$dist, null);
		Main::$dto->result = "";
		$r = $firebase->set(Main::$data);
		Main::$dto->result = haxe_Json::phpJsonEncode($r, null, null);
	}}
	function __toString() { return 'action.method.RoomCreateMethod'; }
}
