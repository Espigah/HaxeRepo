<?php
require_once dirname(__FILE__).'/../../Firebase.extern.php';

class action_method_EnterMethod {
	public function __construct($model) { if(!php_Boot::$skip_constructor) {
		$firebase = new Firebase(Main::$dist, null);
		$hashPhp = $firebase->val();
		if($hashPhp === null) {
			Main::$dto->error = "Usuario não cadastrado.";
			return;
		}
		$hashHaxe = php_Lib::hashOfAssociativeArray($hashPhp);
		$user = haxe_Json::phpJsonDecode(Main::$data);
		Main::$dto->message = "";
		$userOrigen = _hx_anonymous(array("login" => $hashHaxe->get("login"), "pass" => $hashHaxe->get("pass"), "uid" => $hashHaxe->get("uid")));
		if($userOrigen->login === $user->login) {
			Main::$dto->message = "OK";
		}
		Main::$dto->result = haxe_Json::phpJsonEncode($userOrigen, null, null);
	}}
	function __toString() { return 'action.method.EnterMethod'; }
}
