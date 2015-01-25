package src.app.chat.service.core ;

import app.events.ServiceRequestEvent;
import haxe.Json;
import haxe.ui.toolkit.core.PopupManager;
import openfl.events.Event;
import openfl.events.EventDispatcher;
import openfl.events.IOErrorEvent;
import openfl.net.URLLoader;
import openfl.net.URLRequest;
import openfl.net.URLRequestHeader;
import openfl.net.URLRequestMethod;
import service.ServiceData;

/**
 * ...
 * @author espigah
 */
class ServiceRequest extends EventDispatcher
{
	var request:openfl.net.URLRequest;
	var loader:URLLoader;
	var url:String;
	public var dto:Dynamic;
	public var result:Dynamic;
	public var enbalePopup:Bool;
	public var data:Dynamic;
	public function new(url:String="",data:Dynamic=null) 
	{
		super(null);	
		if (url == "") { 
			url = CONSTANTS.PROXY;
		};	
		this.url = url;
		this.data = data;
		
		
	
		
	}
	
	public function createRequest(url:String):Void
	{
		request =  new openfl.net.URLRequest(url);
		request.method = URLRequestMethod.GET;
		
		
		request.requestHeaders.push(new URLRequestHeader("Access-Control-Allow-Origin", "*"));
		request.contentType = "text/plain";	
		if (data != null) { 
			request.data = data;
		};
	}
	
	public function setData(data:ServiceData):Void
	{
		trace(":setData", data.getString());
		this.data = data.getString();
	}
	
	public function load():Void
	{
		createRequest(url);		
		loader = new URLLoader();
		loader.addEventListener(Event.COMPLETE, onComplete );
		//loader.addEventListener(Event.INIT, onNetworkError);
		loader.addEventListener(IOErrorEvent.IO_ERROR, onIOError);
		loader.load(request);
	}
	
	public function onComplete(e:Event):Void
	{
		trace("________________________" );
		trace(loader.data);
		trace("________________________" );
		
		try 
		{
			dto = Json.parse(loader.data);
		}catch (err:Dynamic)
		{
			trace(err);
			PopupManager.instance.showSimple(loader.data, "Paese Error");
			return;
		}
		
		if (dto.error != "")
		{
			if (enbalePopup)
			{
				PopupManager.instance.showSimple(dto.error,"Firebase:"+dto.tag);
			}
			dispatchEvent(new ServiceRequestEvent(ServiceRequestEvent.ERROR, this));
			return;
		}
		if (dto.result != null)
		{
			result = Json.parse(dto.result );
		}
		enbalePopup = true;
		dispatchEvent(new ServiceRequestEvent(ServiceRequestEvent.COMPLETE,this));	
	}
	
	
	public function onIOError(e:IOErrorEvent):Void
	{
		trace(e);
		dispatchEvent(new ServiceRequestEvent(ServiceRequestEvent.IO_ERROR, this));
	}
}