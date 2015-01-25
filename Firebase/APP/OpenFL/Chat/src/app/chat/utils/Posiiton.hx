package app.chat.utils;
import app.chat.views.InteractiveView;

/**
 * ...
 * @author espigah
 */
class Posiiton
{
	public var l:Int;
	public var c:Int;
	@:isVar public var value(get, set):Int=0;
	public var iv:InteractiveView;
	public function new(c:Int, l:Int, iv:InteractiveView) 
	{
		this.iv = iv;
		this.c = c;
		this.l = l;
		
		
		iv.posiiton = this;
	}
	
	function get_value():Int 
	{
		return value;
	}
	
	function set_value(__value:Int):Int 
	{
		value = __value;
		iv.update();
		return value;
	}
	
}