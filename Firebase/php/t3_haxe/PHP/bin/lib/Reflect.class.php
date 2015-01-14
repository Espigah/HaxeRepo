<?php

class Reflect {
	public function __construct(){}
	static function getProperty($o, $field) {
		if(null === $o) {
			return null;
		}
		$cls = null;
		if(Std::is($o, _hx_qtype("Class"))) {
			$cls = $o->__tname__;
		} else {
			$cls = get_class($o);
		}
		$cls_vars = get_class_vars($cls);
		if(isset($cls_vars['__properties__']) && isset($cls_vars['__properties__']['get_'.$field]) && ($field = $cls_vars['__properties__']['get_'.$field])) {
			return $o->$field();
		} else {
			return $o->$field;
		}
	}
	function __toString() { return 'Reflect'; }
}
