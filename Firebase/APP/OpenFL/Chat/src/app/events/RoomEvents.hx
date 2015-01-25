package app.events;

import openfl.events.Event;

/**
 * ...
 * @author espigah
 */
class RoomEvents extends Event
{
	static public inline var CONNECTED:String = "connected";

	public function new(type:String, bubbles:Bool=false, cancelable:Bool=false) 
	{
		super(type, bubbles, cancelable);
		
	}
	
}