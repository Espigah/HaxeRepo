<?php
require_once dirname(__FILE__).'/../../Firebase.extern.php';

class action_method_FormEnterMethod {
	public function __construct($model) { if(!php_Boot::$skip_constructor) {
		$firebase = new Firebase(Main::$dist, null);
		$hashPhp = $firebase->val();
		Main::$dto->logger->push(Main::$dist);
		Main::$dto->logger->push($hashPhp);
		if($hashPhp === null) {
			Main::$dto->tag = "LOGIN";
			Main::$dto->error = "Usuario não cadastrado.";
			return;
		}
		$hashHaxe = php_Lib::hashOfAssociativeArray($hashPhp);
		$user = haxe_Json::phpJsonDecode(Main::$data);
		Main::$dto->message = "";
		$userOrigen = _hx_anonymous(array("login" => $hashHaxe->get("login"), "pass" => $hashHaxe->get("pass")));
		if($userOrigen->login !== $user->login) {
			Main::$dto->tag = "LOGIN";
			Main::$dto->error = "Usuario não confere.";
			return;
		}
		if($userOrigen->pass !== $user->pass) {
			Main::$dto->tag = "LOGIN";
			Main::$dto->error = "Senha não confere.";
			return;
		}
		Main::$dto->result = haxe_Json::phpJsonEncode($userOrigen, null, null);
	}}
	function __toString() { return 'action.method.FormEnterMethod'; }
}
