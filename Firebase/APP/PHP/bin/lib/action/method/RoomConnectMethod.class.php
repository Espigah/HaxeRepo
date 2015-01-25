<?php
require_once dirname(__FILE__).'/../../Firebase.extern.php';

class action_method_RoomConnectMethod {
	public function __construct($model) {
		if(!php_Boot::$skip_constructor) {
		$hashPhp = $this->findRoomPage();
		if($hashPhp === null) {
			Main::$dto->error = "Sala não encontrada.";
			null;
			return;
		}
		$roomData = $this->findRoomData($hashPhp);
		$this->updateRoom($roomData);
	}}
	public $firebase;
	public function findRoomData($hashPhp) {
		$resultData = null;
		{
			$text = haxe_Json::phpJsonEncode($hashPhp, null, null);
			$resultData = haxe_Json::phpJsonDecode($text);
		}
		$page = "";
		{
			$_g = 0;
			$_g1 = Reflect::fields($resultData);
			while($_g < $_g1->length) {
				$roomPage = $_g1[$_g];
				++$_g;
				$page = $roomPage;
				unset($roomPage);
			}
		}
		$firebaseChild = $this->firebase->child($page);
		return $firebaseChild;
	}
	public function updateRoom($firebaseChild) {
		$roomNativeData = $firebaseChild->val();
		if($roomNativeData === null) {
			Main::$dto->error = "Não foi possivel fazer a atualização.";
			return;
		}
		$roomModel = php_Lib::objectOfAssociativeArray($roomNativeData);
		$roomModel->connections = 2;
		$roomModel->open = false;
		$updateResult = $firebaseChild->update(haxe_Json::phpJsonEncode($roomModel, null, null));
		Main::$dto->result = haxe_Json::phpJsonEncode($updateResult, null, null);
	}
	public function findRoomPage() {
		$dist = Main::$dist;
		$this->firebase = new Firebase($dist, null);
		$hashPhp = $this->firebase->ordering("orderBy=\"open\"&startAt=true&limitToFirst=1");
		return $hashPhp;
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
	function __toString() { return 'action.method.RoomConnectMethod'; }
}
