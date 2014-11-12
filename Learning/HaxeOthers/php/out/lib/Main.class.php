<?php

class Main {
	public function __construct(){}
	static function main() {
		new test_Test();
	}
	function __toString() { return 'Main'; }
}
