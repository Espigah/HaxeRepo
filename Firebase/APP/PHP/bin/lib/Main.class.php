<?php
require_once dirname(__FILE__).'/Firebase.extern.php';

class Main {
	public function __construct(){}
	static $dto;
	static $params;
	static $special;
	static $method;
	static $action;
	static $page;
	static $path;
	static $dist;
	static $data;
	static $type;
	static function main() {
		header("Access-Control-Allow-Origin" . ": " . "*");
		Main::$dto = new DataTransferObject(null);
		Main::$params = php_Web::getParams();
		if(Main::$params->exists("special")) {
			Main::$special = Main::$params->get("special");
		} else {
			Main::$special = "";
		}
		if(Main::$params->exists("method")) {
			Main::$method = Main::$params->get("method");
		} else {
			Main::$method = "";
		}
		if(Main::$params->exists("page")) {
			Main::$page = Main::$params->get("page");
		} else {
			Main::$page = "";
		}
		if(Main::$params->exists("data")) {
			Main::$data = Main::$params->get("data");
		} else {
			Main::$data = "";
		}
		if(Main::$params->exists("path")) {
			Main::$path = Main::$params->get("path");
		} else {
			Main::$path = "";
		}
		if(Main::$params->exists("TYPE")) {
			Main::$type = Main::$params->get("TYPE");
		} else {
			Main::$type = "";
		}
		if(Main::$params->exists("action")) {
			Main::$action = Main::$params->get("action");
		} else {
			Main::$action = "";
		}
		Main::$dist = "https://intense-torch-9712.firebaseio.com";
		if(Main::$path !== "") {
			Main::$dist .= "/" . _hx_string_or_null(Main::$path);
		}
		if(Main::$page !== "") {
			Main::$dist .= "/" . _hx_string_or_null(Main::$page);
		}
		if(Main::$type === "" && Main::$action !== "") {
			$dataObject = haxe_Json::phpJsonDecode(Main::$data);
			$ClassT = Type::resolveClass("action." . _hx_string_or_null(Main::$action));
			$instance = Type::createInstance($ClassT, (new _hx_array(array())));
			Reflect::callMethod($instance, Reflect::field($instance, Main::$method), (new _hx_array(array($dataObject))));
		} else {
			$firebase = new Firebase("https://intense-torch-9712.firebaseio.com" . _hx_string_or_null(Main::$path) . _hx_string_or_null(Main::$page), null);
			{
				$_g = Main::$type;
				switch($_g) {
				case "set":{
				}break;
				case "update":{
				}break;
				case "push":{
				}break;
				case "delete":{
				}break;
				default:{
				}break;
				}
			}
		}
		php_Lib::println(Main::$dto->getJson());
	}
	static function tester() {
	}
	function __toString() { return 'Main'; }
}
