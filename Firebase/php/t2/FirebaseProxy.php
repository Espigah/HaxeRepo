<?php

require_once join('/', array(__DIR__, '..', 'firebase.php'));


  
  
// $_todoMilk2 = array(
    // 'name' => 'Pick the milk',
    // 'id' => 2,
    // 'priority' => 1
  // );
  
$_todoMilk = array(
    'name' => 'Pick the milk',
    'id' => 2,
    'priority' => 1,
    'n' => 1,
  );
$obj = new firebase('https://intense-torch-9712.firebaseio.com/php',true);
// $obj = new Firebase(,'a788a2c751f04428b883fbe7eacdbe97');
// $response = $obj->update($_todoMilk);
$response = $obj->update('{"id":42,"provider":"anonymous","uid":"anonymous:{c:1}"} ');
		
//orderBy="height"&print=pretty'
echo $response;	


//orderBy

//See the section in the guide on ordered data for more information.
//limitToFirst, limitToLast, startAt, endAt, equalTo

?>