package src.app.chat.service.core ;

import haxe.Json;
import openfl.events.Event;
import openfl.events.EventDispatcher;
import openfl.events.IOErrorEvent;
import openfl.net.URLLoader;
import openfl.net.URLRequest;
import openfl.net.URLRequestMethod;
import src.app.chat.service.core.ServiceData;
/**
 * ...
 * @author espigah
 */
class ServiceRequest extends EventDispatcher
{
	var request:openfl.net.URLRequest;
	var loader:URLLoader;
	public function new(url:String="",data:Dynamic=null) 
	{
		super(null);
		if (url == "") { 
			url = CONSTANTS.PROXY;
		};	
		
		createRequest(url);
			if (data != null) { 
				setData(data);
			};
		
	}
	
	public function createRequest(url:String):Void
	{
		request =  new openfl.net.URLRequest(url);
		request.method = URLRequestMethod.GET;
		request.contentType = "text/plain";	
	}
	
	public function setData(data:ServiceData):Void
	{
		trace(":setData", data.getString());
		request.data = data.getString();
	}
	
	public function load():Void
	{
		loader = new URLLoader(request);
		loader.addEventListener(Event.COMPLETE, onComplete );
		//loader.addEventListener(Event.INIT, onNetworkError);
		loader.addEventListener(IOErrorEvent.IO_ERROR, onIOError);
		loader.load(request);
	}
	
	public function onComplete(e:Event):Void
	{
		trace(e, loader.data, loader.dataFormat);
		var d:Dynamic = Json.parse(loader.data);
		if (d.result != null)
		{
			d.result = Json.parse(d.result );
		}
		if (d.error != "")
		{
			
		}
		
		dispatchEvent(e);
	}
	
	public function onIOError(e:IOErrorEvent):Void
	{
		trace(e);
	}
}