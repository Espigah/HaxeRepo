package app.events;

import app.chat.views.InteractiveView;
import openfl.events.Event;

/**
 * ...
 * @author espigah
 */
class InteractiveViewEvent extends Event
{
	static public inline var UPDATE:String = "update";
	public var interactiveView:InteractiveView;
	
	public function new(type:String, interactiveView:InteractiveView, bubbles:Bool=false, cancelable:Bool=false) 
	{
		super(type, bubbles, cancelable);
		this.interactiveView = interactiveView;
		
	}

	
}