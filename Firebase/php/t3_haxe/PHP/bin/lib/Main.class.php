<?php
require_once dirname(__FILE__).'/Firebase.extern.php';
require_once dirname(__FILE__).'/Services_FirebaseTokenGenerator.extern.php';

class Main {
	public function __construct(){}
	static function main() {
		if(php_Web::getMethod() === "GET") {
		}
		$params = php_Web::getParams();
		$method = null;
		if($params->exists("method")) {
			$method = $params->get("method");
		} else {
			$method = "";
		}
		$page = null;
		if($params->exists("page")) {
			$page = $params->get("page");
		} else {
			$page = "";
		}
		$data = null;
		if($params->exists("data")) {
			$data = $params->get("data");
		} else {
			$data = "";
		}
		$firebase = new Firebase("https://intense-torch-9712.firebaseio.com/" . _hx_string_or_null($page), null);
		$returndata = "";
		switch($method) {
		case "set":{
			$returndata = $firebase->set($data);
		}break;
		case "update":{
			$returndata = $firebase->update($data);
		}break;
		case "push":{
			$returndata = $firebase->push($data);
		}break;
		case "delete":{
			$returndata = $firebase->delete($data);
		}break;
		default:{
		}break;
		}
		php_Lib::println($returndata);
		$s = new Services_FirebaseTokenGenerator("Z0grBDh4Om5FfIRSfccTZ6lf1ZkQlOp9cO4cusk4");
		php_Lib::println($s->createToken((new _hx_array(array("uid:5"))), null));
	}
	function __toString() { return 'Main'; }
}
