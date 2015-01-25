package app.events;

import openfl.events.Event;
import src.app.chat.service.core.ServiceRequest;

/**
 * ...
 * @author espigah
 */
class ServiceRequestEvent extends Event
{
	public var serviceRequest:ServiceRequest;
	static public inline var ERROR:String = "error";
	static public inline var COMPLETE:String = "complete";
	static public inline var IO_ERROR:String = "ioError";

	public function new(type:String,serviceRequest:ServiceRequest, bubbles:Bool=false, cancelable:Bool=false) 
	{
		super(type, bubbles, cancelable);
		this.serviceRequest = serviceRequest;
		
	}
	
}