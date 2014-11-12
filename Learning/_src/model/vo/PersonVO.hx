package model.vo;

/**
 * ...
 * @author Espigah
 */
class PersonVO
{
	@:isVar public var name(get, set):String;
	@:isVar public var power(get, set):Int;
	public function new(name:String, power:Int) 
	{
		this.name = name;
		this.power = power;
	}
	
	function get_name():String 
	{
		return name;
	}
	
	function set_name(value:String):String 
	{
		return name = value;
	}
	
	function get_power():Int 
	{
		return power;
	}
	
	function set_power(value:Int):Int 
	{
		return power = value;
	}
	
}