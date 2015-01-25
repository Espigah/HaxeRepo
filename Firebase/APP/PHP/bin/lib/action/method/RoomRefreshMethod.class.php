<?php
require_once dirname(__FILE__).'/../../Firebase.extern.php';

class action_method_RoomRefreshMethod {
	public function __construct($roomModel) { if(!php_Boot::$skip_constructor) {
		$dist = Main::$dist;
		$firebase = new Firebase($dist, null);
		$roomNativeData = $firebase->val();
		$roomModel1 = php_Lib::objectOfAssociativeArray($roomNativeData);
		Main::$dto->result = haxe_Json::phpJsonEncode($roomModel1, null, null);
	}}
	function __toString() { return 'action.method.RoomRefreshMethod'; }
}
