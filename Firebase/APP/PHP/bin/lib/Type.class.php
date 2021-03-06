<?php

class Type {
	public function __construct(){}
	static function resolveClass($name) {
		$c = _hx_qtype($name);
		if($c instanceof _hx_class || $c instanceof _hx_interface) {
			return $c;
		} else {
			return null;
		}
	}
	static function createInstance($cl, $args) {
		if($cl->__qname__ === "Array") {
			return (new _hx_array(array()));
		}
		if($cl->__qname__ === "String") {
			return $args[0];
		}
		$c = $cl->__rfl__();
		if($c === null) {
			return null;
		}
		return $inst = $c->getConstructor() ? $c->newInstanceArgs($args->a) : $c->newInstanceArgs();
	}
	static function typeof($v) {
		if($v === null) {
			return ValueType::$TNull;
		}
		if(is_array($v)) {
			if(is_callable($v)) {
				return ValueType::$TFunction;
			}
			return ValueType::TClass(_hx_qtype("Array"));
		}
		if(is_string($v)) {
			if(_hx_is_lambda($v)) {
				return ValueType::$TFunction;
			}
			return ValueType::TClass(_hx_qtype("String"));
		}
		if(is_bool($v)) {
			return ValueType::$TBool;
		}
		if(is_int($v)) {
			return ValueType::$TInt;
		}
		if(is_float($v)) {
			return ValueType::$TFloat;
		}
		if($v instanceof _hx_anonymous) {
			return ValueType::$TObject;
		}
		if($v instanceof _hx_enum) {
			return ValueType::$TObject;
		}
		if($v instanceof _hx_class) {
			return ValueType::$TObject;
		}
		$c = _hx_ttype(get_class($v));
		if($c instanceof _hx_enum) {
			return ValueType::TEnum($c);
		}
		if($c instanceof _hx_class) {
			return ValueType::TClass($c);
		}
		return ValueType::$TUnknown;
	}
	function __toString() { return 'Type'; }
}
