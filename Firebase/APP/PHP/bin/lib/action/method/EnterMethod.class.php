<?php
require_once dirname(__FILE__).'/../../Firebase.extern.php';

class action_method_EnterMethod {
	public function __construct($model) { if(!php_Boot::$skip_constructor) {
		$GLOBALS['%s']->push("action.method.EnterMethod::new");
		$__hx__spos = $GLOBALS['%s']->length;
		$firebase = new Firebase(Main::$dist, null);
		$hashPhp = $firebase->val();
		Main::$dto->logger->push(Main::$dist);
		Main::$dto->logger->push($hashPhp);
		if($hashPhp === null) {
			Main::$dto->tag = "LOGIN";
			Main::$dto->error = "Usuario não cadastrado.";
			{
				$GLOBALS['%s']->pop();
				return;
			}
		}
		$hashHaxe = php_Lib::hashOfAssociativeArray($hashPhp);
		$user = haxe_Json::phpJsonDecode(Main::$data);
		Main::$dto->message = "";
		$userOrigen = _hx_anonymous(array("login" => $hashHaxe->get("login"), "pass" => $hashHaxe->get("pass")));
		if($userOrigen->login !== $user->login) {
			Main::$dto->tag = "LOGIN";
			Main::$dto->error = "Usuario não confere.";
			{
				$GLOBALS['%s']->pop();
				return;
			}
		}
		if($userOrigen->pass !== $user->pass) {
			Main::$dto->tag = "LOGIN";
			Main::$dto->error = "Senha não confere.";
			{
				$GLOBALS['%s']->pop();
				return;
			}
		}
		Main::$dto->result = haxe_Json::phpJsonEncode($userOrigen, null, null);
		$GLOBALS['%s']->pop();
	}}
	function __toString() { return 'action.method.EnterMethod'; }
}
