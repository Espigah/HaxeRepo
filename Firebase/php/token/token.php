<?php
include_once "JWT.php";
    include_once "FirebaseToken.php";

    $tokenGen = new Services_FirebaseTokenGenerator("Z0grBDh4Om5FfIRSfccTZ6lf1ZkQlOp9cO4cusk4");
    $token = $tokenGen->createToken(array("uid" => "1"));
    echo $token;
?>