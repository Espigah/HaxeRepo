<?php

require_once join('/', array(__DIR__, '..', 'firebaseLib.php'));
require_once join('/', array(__DIR__, '..', 'firebaseStub.php'));

// class FirebaseProxy
// {
	// public $firebaseStub=null;
	// function __construct($baseURI = 'https://intense-torch-9712.firebaseio.com', $token = 'a788a2c751f04428b883fbe7eacdbe97')
	// {
		// this->firebaseStub = new FirebaseStub($baseURI,$token)
	// }
	
	 // public function __destruct()
	// {
	  // echo 'A classe "', __CLASS__, '" foi destruída.<br />';
	// }
 
// }

$_todoMilk = array(
    'name' => 'Pick the milk',
    'priority' => 1
  );
// $obj = new FirebaseProxy();
$obj = new Firebase('https://intense-torch-9712.firebaseio.com','a788a2c751f04428b883fbe7eacdbe97');
$response = $obj->set("/rest", $_todoMilk)
//$responseObj = json_decode($response);
// echo $response
// echo $responseObj
?>