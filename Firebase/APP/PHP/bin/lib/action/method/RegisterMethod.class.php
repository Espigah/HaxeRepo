<?php
require_once dirname(__FILE__).'/../../Firebase.extern.php';

class action_method_RegisterMethod {
	public function __construct($model) { if(!php_Boot::$skip_constructor) {
		$firebase = new Firebase(Main::$dist, null);
		if($firebase->val() !== null) {
			Main::$dto->error = "Usuario ja cadastrado.";
		}
		$r = $firebase->set(Main::$data);
		Main::$dto->message = $r;
	}}
	function __toString() { return 'action.method.RegisterMethod'; }
}
