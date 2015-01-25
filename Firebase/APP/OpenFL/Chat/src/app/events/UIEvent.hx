package app.events;

import openfl.events.Event;

/**
 * ...
 * @author espigah
 */
class UIEvent extends Event
{
	static public inline var CLOSE:String = "close";

	public function new(type:String, bubbles:Bool=false, cancelable:Bool=false) 
	{
		super(type, bubbles, cancelable);
		
	}
	
}