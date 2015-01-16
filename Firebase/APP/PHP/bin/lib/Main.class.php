<?php
require_once dirname(__FILE__).'/Firebase.extern.php';

class Main {
	public function __construct(){}
	static $dto;
	static $params;
	static $special;
	static $method;
	static $page;
	static $path;
	static $dist;
	static $data;
	static function main() {
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
		Main::$dist = "https://intense-torch-9712.firebaseio.com";
		if(Main::$path !== "") {
			Main::$dist .= "/" . _hx_string_or_null(Main::$path);
		}
		if(Main::$page !== "") {
			Main::$dist .= "/" . _hx_string_or_null(Main::$page);
		}
		if(Main::$special === "1") {
			$_g = Main::$method;
			switch($_g) {
			case "register":{
				new actions_RegisterAction(Main::$dto);
			}break;
			case "enter":{
				new actions_EnterAction(Main::$dto);
			}break;
			}
		} else {
			$firebase = new Firebase("https://intense-torch-9712.firebaseio.com" . _hx_string_or_null(Main::$path) . _hx_string_or_null(Main::$page), null);
			{
				$_g1 = Main::$method;
				switch($_g1) {
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
	function __toString() { return 'Main'; }
}
Main::$dto = new DataTransferObject(null);
