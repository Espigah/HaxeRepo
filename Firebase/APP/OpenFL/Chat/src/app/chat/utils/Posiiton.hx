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
	public var value:Int;
	public var iv:InteractiveView;
	public function new(l:Int, c:Int, iv:InteractiveView, value:Int) 
	{
		this.iv = iv;
		this.c = c;
		this.l = l;
		this.value = value;	
		
		iv.posiiton = this;
	}
	
}