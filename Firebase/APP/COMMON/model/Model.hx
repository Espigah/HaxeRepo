package model;
import haxe.Json;

/**
 * ...
 * @author espigah
 */
class Model
{

	public function new() 
	{
		
	}
	
	public function getJSON():String
	{
		return Json.stringify(this);
	}
	
}

