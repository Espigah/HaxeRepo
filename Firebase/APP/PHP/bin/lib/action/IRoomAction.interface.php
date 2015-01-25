<?php

interface action_IRoomAction {
	function create($roomModel);
	function connect($roomModel);
	function update($roomModel, $gridModel);
	function refresh($roomModel);
}
