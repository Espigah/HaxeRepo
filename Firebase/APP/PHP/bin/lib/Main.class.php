<?php
require_once dirname(__FILE__).'/Firebase.extern.php';

class Main {
	public function __construct(){}
	static $dto;
	static function main() {
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
		$path = null;
		if($params->exists("path")) {
			$path = $params->get("path");
		} else {
			$path = "";
		}
		$returndata = "";
		if("enter" === $method) {
			Main::enter($path, $page, $data);
			php_Lib::println(Main::$dto->getJson());
			return;
		}
		$firebase = new Firebase("https://intense-torch-9712.firebaseio.com" . _hx_string_or_null($path) . _hx_string_or_null($page), null);
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
	}
	static function enter($path, $page, $data) {
		$dist = "https://intense-torch-9712.firebaseio.com";
		if($path !== "") {
			$dist .= "/" . _hx_string_or_null($path);
		}
		if($page !== "") {
			$dist .= "/" . _hx_string_or_null($page);
		}
		$firebase = new Firebase($dist, null);
		if($firebase->val() !== null) {
			Main::$dto->error = "Usuario ja cadastrado.";
		}
		$r = $firebase->set($data);
		Main::$dto->message = $r;
	}
	function __toString() { return 'Main'; }
}
Main::$dto = new DataTransferObject(null);
