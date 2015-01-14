<?php
 require_once 'firebase.php';
 
$fb = new firebase('https://intense-torch-9712.firebaseio.com/app/chat/user'); 

echo $fb->toJSON($fb->get('orderBy="id"&startAt="fabricio"&endAt="fabricio"'));



?>