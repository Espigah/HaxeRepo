<?php
	$name = "Fabricio";
	$pas= "fa*963fa";
	
	
	
	function doTea($name, $pass, $other)
	{
		$s1 = hash ('sha512', $name);
		$s2 = hash ('sha512',$pass);
		$s3 = hash ('sha256',$s1+$other+$s3);
		return $s3;
	}
	
	echo doTea($name,$pas,"");
	echo "___";
	echo doTea($name,$pas,"");
	echo "___";
	echo doTea($name,$pas,"");
	echo "___";
?>
