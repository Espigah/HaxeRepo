<?php

class CONSTANTS {
	public function __construct(){}
	static $FIREBASE = "https://intense-torch-9712.firebaseio.com/";
	static $PUSH = "push";
	static $DELETE = "delete";
	static $UPDATE = "update";
	static $SET = "set";
	static $GET = "GET";
	static $METHOD = "method";
	static $PAGE = "page";
	static $DATA = "data";
	function __toString() { return 'CONSTANTS'; }
}
