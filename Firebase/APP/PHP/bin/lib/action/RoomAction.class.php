<?php

class action_RoomAction implements action_IRoomAction{
	public function __construct() { 
	}
	public function create($roomModel) {
		new action_method_RoomCreateMethod($roomModel);
		return null;
	}
	public function connect($roomModel) {
		new action_method_RoomConnectMethod($roomModel);
		return null;
	}
	public function update($roomModel, $gridModel) {
		new action_method_RoomUpdateMethod($gridModel);
		return null;
	}
	public function refresh($roomModel) {
		new action_method_RoomRefreshMethod($roomModel);
		return null;
	}
	function __toString() { return 'action.RoomAction'; }
}
