<?php

class test_Test {
	public function __construct() { if(!php_Boot::$skip_constructor) {
		$personVO = _hx_deref(new model_bo_NaturalSelectionBO())->getStrongest((new _hx_array(array(new model_vo_PersonVO("p1", 5), new model_vo_PersonVO("p2", 9)))));
		haxe_Log::trace("-> NaturalSelection ->", _hx_anonymous(array("fileName" => "Test.hx", "lineNumber" => 15, "className" => "test.Test", "methodName" => "new")));
		haxe_Log::trace("Person Name:", _hx_anonymous(array("fileName" => "Test.hx", "lineNumber" => 16, "className" => "test.Test", "methodName" => "new", "customParams" => (new _hx_array(array($personVO->get_name()))))));
		haxe_Log::trace("Person Power:", _hx_anonymous(array("fileName" => "Test.hx", "lineNumber" => 17, "className" => "test.Test", "methodName" => "new", "customParams" => (new _hx_array(array($personVO->get_power()))))));
		haxe_Log::trace("<- NaturalSelection <-", _hx_anonymous(array("fileName" => "Test.hx", "lineNumber" => 18, "className" => "test.Test", "methodName" => "new")));
	}}
	function __toString() { return 'test.Test'; }
}
