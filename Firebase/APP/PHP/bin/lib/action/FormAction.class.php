<?php

class action_FormAction implements action_IFormAction{
	public function __construct() { 
	}
	public function enter($model) {
		new action_method_EnterMethod($model);
		return null;
	}
	public function register($model) {
		new action_method_RegisterMethod($model);
		return null;
	}
	function __toString() { return 'action.FormAction'; }
}
