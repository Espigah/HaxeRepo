<?php

class model_FormModel extends model_Model {
	public function __construct() {
		if(!php_Boot::$skip_constructor) {
		parent::__construct();
		$this->data = _hx_anonymous(array());
	}}
	public $data;
	public $isRegister;
	public function updateUID() {
		$this->data->uid = haxe_crypto_Sha1::encode(_hx_string_or_null($this->data->pass) . _hx_string_or_null($this->data->login));
	}
	public function getJSON() {
		$this->data->pass = haxe_crypto_Sha1::encode($this->data->pass);
		$this->updateUID();
		return haxe_Json::phpJsonEncode($this->data, null);
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
	function __toString() { return 'model.FormModel'; }
}
