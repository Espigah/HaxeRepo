<?php

class DataTransferObject {
	public function __construct($data = null) {
		if(!php_Boot::$skip_constructor) {
		$this->tag = "";
		$this->message = "";
		$this->error = "";
		if($data === null) {
			return;
		}
		$this->error = $data->error;
		$this->message = $data->message;
		$this->tag = $data->tag;
	}}
	public $error;
	public $message;
	public $tag;
	public $result;
	public function getJson() {
		return haxe_Json::phpJsonEncode($this, null, null);
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
	static function convert($string) {
		return new DataTransferObject(haxe_Json::phpJsonDecode($string));
	}
	function __toString() { return 'DataTransferObject'; }
}
