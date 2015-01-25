<?php
require_once dirname(__FILE__).'/../../Firebase.extern.php';

class action_method_FormRegisterMethod {
	public function __construct($model) { if(!php_Boot::$skip_constructor) {
		$firebase = new Firebase(Main::$dist, null);
		if($firebase->val() !== null) {
			Main::$dto->error = "Usuario ja cadastrado.";
		}
		$userModel = haxe_Json::phpJsonDecode(Main::$data);
		$r = $firebase->set(haxe_Json::phpJsonEncode($userModel, null, null));
		Main::$dto->message = $r;
	}}
	function __toString() { return 'action.method.FormRegisterMethod'; }
}
