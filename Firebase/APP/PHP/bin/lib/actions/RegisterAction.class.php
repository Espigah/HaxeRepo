<?php
require_once dirname(__FILE__).'/../Firebase.extern.php';

class actions_RegisterAction {
	public function __construct($dto) { if(!php_Boot::$skip_constructor) {
		$firebase = new Firebase(Main::$dist, null);
		if($firebase->val() !== null) {
			$dto->error = "Usuario ja cadastrado.";
		}
		$r = $firebase->set(Main::$data);
		$dto->message = $r;
	}}
	function __toString() { return 'actions.RegisterAction'; }
}
