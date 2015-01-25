<?php
require_once dirname(__FILE__).'/../../Firebase.extern.php';

class action_method_RoomUpdateMethod {
	public function __construct($gridModel) { if(!php_Boot::$skip_constructor) {
		$dist = Main::$dist;
		$firebase = new Firebase(_hx_string_or_null($dist) . "/" . _hx_string_rec($gridModel->c, ""), null);
		$resultUpdate = $firebase->update("{\"" . _hx_string_rec($gridModel->l, "") . "\":" . _hx_string_rec($gridModel->value, "") . "}");
		$roomDataEntity = $firebase->val();
		Main::$dto->result = haxe_Json::phpJsonEncode($roomDataEntity, null, null);
	}}
	function __toString() { return 'action.method.RoomUpdateMethod'; }
}
