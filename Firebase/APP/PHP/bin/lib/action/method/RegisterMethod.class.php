<?php
require_once dirname(__FILE__).'/../../Firebase.extern.php';

class action_method_RegisterMethod {
	public function __construct($model) { if(!php_Boot::$skip_constructor) {
		$GLOBALS['%s']->push("action.method.RegisterMethod::new");
		$__hx__spos = $GLOBALS['%s']->length;
		$firebase = new Firebase(Main::$dist, null);
		if($firebase->val() !== null) {
			Main::$dto->error = "Usuario ja cadastrado.";
		}
		$r = $firebase->set(Main::$data);
		Main::$dto->message = $r;
		$GLOBALS['%s']->pop();
	}}
	function __toString() { return 'action.method.RegisterMethod'; }
}
