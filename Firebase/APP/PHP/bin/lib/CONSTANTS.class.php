<?php

class CONSTANTS {
	public function __construct(){}
	static $FIREBASE = "https://intense-torch-9712.firebaseio.com";
	static $PUSH = "push";
	static $DELETE = "delete";
	static $UPDATE = "update";
	static $SET = "set";
	static $SPECIAL = "special";
	static $GET = "GET";
	static $METHOD = "method";
	static $PAGE = "page";
	static $DATA = "data";
	static $ACTION = "action";
	static $PROXY = "http://localhost/php/firebase/index.php";
	static $USER = "users";
	static $PATH = "path";
	static $ENTER = "enter";
	static $ERROR = "error";
	static $REGISTER = "register";
	static $TYPE = "TYPE";
	static $PLAYER_1_VALUE = 1;
	static $PLAYER_2_VALUE = 2;
	static $ROOM_PATH = "rooms";
	function __toString() { return 'CONSTANTS'; }
}
