package src.app.chat.service;

import app.chat.service.ServiceData;
import haxe.Json;
import openfl.events.Event;
import openfl.events.EventDispatcher;
import openfl.events.IOErrorEvent;
import openfl.net.URLRequest;
import openfl.net.URLLoader;
import openfl.net.URLRequestMethod;
/**
 * ...
 * @author espigah
 */
class ServiceRequest extends EventDispatcher
{
	var request:openfl.net.URLRequest;
	var loader:URLLoader;
	public var dto:DataTransferObject;
	public function new(url:String="",data:Dynamic=null) 
	{
		super(null);
		if (url != "") { 
			createRequest(url);
			if (data != null) { 
				setData(data);
			};
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
		request.data = data.getString();
	}
	
	public function load():Void
	{
		loader = new URLLoader(request);
		loader.addEventListener(Event.COMPLETE, onComplete );
		//loader.addEventListener(Event.INIT, onNetworkError);
		loader.addEventListener(IOErrorEvent.IO_ERROR, onIOError);
		
		print();
		loader.load(request);
	}
	
	function print() 
	{
		trace("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		trace("Data = ", request.data);
		trace("url = ", request.url);
		trace("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
	}
	
	public function onComplete(e:Event):Void
	{
		trace("onComplete");
		//trace(e, loader.data, loader.dataFormat);
		dto = DataTransferObject.convert(loader.data);
		//trace(dd.error);		
		dispatchEvent(e);
	}
	
	public function onIOError(e:IOErrorEvent):Void
	{
		trace(e);
	}
	
	public function callback(__callback:Dynamic) 
	{
		if (dto != null)
		{
			__callback(this);
		}
		else
		{
			this.addEventListener(Event.COMPLETE, function(e:Dynamic):Void
			{
				__callback(this);
			});
		}
	}
}