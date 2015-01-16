<?php

class model_Model {
	public function __construct() { 
	}
	public function getJSON() {
		return haxe_Json::phpJsonEncode($this, null);
	}
	function __toString() { return 'model.Model'; }
}
