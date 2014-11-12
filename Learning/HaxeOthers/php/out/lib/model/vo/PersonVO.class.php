<?php

class model_vo_PersonVO {
	public function __construct($name, $power) {
		if(!php_Boot::$skip_constructor) {
		$this->set_name($name);
		$this->set_power($power);
	}}
	public $name;
	public $power;
	public function get_name() {
		return $this->name;
	}
	public function set_name($value) {
		return $this->name = $value;
	}
	public function get_power() {
		return $this->power;
	}
	public function set_power($value) {
		return $this->power = $value;
	}
	public function __call($m, $a) {
		if(isset($this->$m) && is_callable($this->$m))
			return call_user_func_array($this->$m, $a);
		else if(isset($this->__dynamics[$m]) && is_callable($this->__dynamics[$m]))
			return call_user_func_array($this->__dynamics[$m], $a);
		else if('toString' == $m)
			return $this->__toString();
		else
			throw new HException('Unable to call <'.$m.'>');
	}
	static $__properties__ = array("set_power" => "set_power","get_power" => "get_power","set_name" => "set_name","get_name" => "get_name");
	function __toString() { return 'model.vo.PersonVO'; }
}
