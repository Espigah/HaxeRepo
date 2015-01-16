<?php
require_once dirname(__FILE__).'/../Firebase.extern.php';

class actions_EnterAction {
	public function __construct($dto) { if(!php_Boot::$skip_constructor) {
		$firebase = new Firebase(Main::$dist, null);
		$hashPhp = $firebase->val();
		if($hashPhp === null) {
			$dto->error = "Usuario não cadastrado.";
			return;
		}
		$hashHaxe = php_Lib::hashOfAssociativeArray($hashPhp);
		$user = haxe_Json::phpJsonDecode(Main::$data);
		$dto->message = "";
		$userOrigen = _hx_anonymous(array("login" => $hashHaxe->get("login")));
		if($userOrigen->login === $user->login) {
			$dto->message = "OK";
		}
		$dto->result = haxe_Json::phpJsonEncode($userOrigen, null);
	}}
	function __toString() { return 'actions.EnterAction'; }
}
