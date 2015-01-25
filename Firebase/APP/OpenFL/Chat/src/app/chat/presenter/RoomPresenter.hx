package app.chat.presenter;
import app.events.RoomEvents;
import app.events.ServiceRequestEvent;
import app.utils.Session;
import haxe.crypto.Sha256;
import haxe.Json;
import haxe.Timer;
import model.Model.GridModel;
import model.Model.RoomModel;
import openfl.errors.IOError;
import openfl.events.Event;
import openfl.events.EventDispatcher;
import openfl.events.IOErrorEvent;
import openfl.net.URLLoader;
import openfl.net.URLRequest;
import src.app.chat.service.core.Service;

/**
 * ...
 * @author espigah
 */
class RoomPresenter extends EventDispatcher
{
	public var roomModel:RoomModel;
	var timer:Timer;
	var isFirstUpdate:Bool;
	public function new() 
	{
		super();
		isFirstUpdate = true;
		//var data = new RoomModel();
		//data.id = 0;
	
		
		
		//var roomAction:RoomAction = new RoomAction();
		//var sr:ServiceRequest = cast roomAction.create(data);
		//sr.addEventListener(Event.COMPLETE, onServiceComplete);
	}
	
	
	private function create(onLoopHandler:Dynamic) 
	{
		function onRoomConnected(e:ServiceRequestEvent):Void 
		{		
			updateModel(e);
			onLoopHandler();	
		}
		var roomModel:RoomModel = {id:""};
		roomModel.id = Sha256.encode(Session.player.login);	
		var sr = cast Service.getInstance().room.create(roomModel);
		sr.addEventListener(ServiceRequestEvent.COMPLETE, onRoomConnected);
		sr.addEventListener(ServiceRequestEvent.ERROR, onRoomCreateError);
	}
	
	
	public function connect(onLoopHandler:Dynamic) 
	{
		function onRoomConnected(e:ServiceRequestEvent):Void 
		{		
			updateModel(e);
			onLoopHandler();	
		}
		
		function onRoomConnecError(e:ServiceRequestEvent):Void 
		{
			create(onLoopHandler);
		}
	
		var sr = cast Service.getInstance().room.connect({});
		sr.addEventListener(ServiceRequestEvent.COMPLETE, onRoomConnected);
		sr.addEventListener(ServiceRequestEvent.ERROR, onRoomConnecError);
	}
	
	function updateModel(e:ServiceRequestEvent) 
	{
		roomModel = Json.parse(e.serviceRequest.result);
	}
		
	
	private function onRoomCreateError(e:ServiceRequestEvent):Void 
	{
		trace(":onRoomCreateError");
	}
	
	
	public function refresh(callback:Dynamic, interval:Int=200) 
	{
		var url:String = CONSTANTS.FIREBASE+"/" + CONSTANTS.ROOM_PATH + "/" + roomModel.id + ".json";
		timer = new Timer(interval);
		timer.run = function ()
		{
			
			try 
			{
				doRefresh(callback, url);
				if (isFirstUpdate == true)
				{
					isFirstUpdate = false;
					dispatchEvent(new RoomEvents(RoomEvents.CONNECTED));
				}
			}
			catch (err:Dynamic)
			{
				trace("Error->"+err);
			}
			
			
		}
		
	}
	
	function doRefresh(callback:Dynamic, url:String) 
	{
		var request:URLRequest = new openfl.net.URLRequest(url);
			var loader = new URLLoader();
			function onRequestCompleted(e:Event)
			{
				loader.removeEventListener(Event.COMPLETE, onRequestCompleted);				
				roomModel = Json.parse(loader.data);
				callback();
			}
			
			loader.addEventListener(Event.COMPLETE, onRequestCompleted);
			loader.addEventListener(IOErrorEvent.IO_ERROR, function (e:IOErrorEvent)
			{
				
			});
			loader.load(request);	
	}
	
	public function update(gridModel:GridModel) 
	{
		var sr = cast Service.getInstance().room.update(roomModel,gridModel);
		//sr.addEventListener(ServiceRequestEvent.COMPLETE, onRoomConnected);
		//sr.addEventListener(ServiceRequestEvent.ERROR, onRoomCreateError);
	}	
	
}

//trace(":refresh");
			//var action:RoomAction = Service.getInstance().room;
			//var sr:EventDispatcher;
			//function onRetry(e:ServiceRequestEvent)
			//{
				//trace(":refresh-onRetry");
				//sr  = cast action.refresh(roomModel);
			//}
			//function onRefreshConnected(e:ServiceRequestEvent)
			//{
				//trace(":refresh2");
				//callback();
				//sr.removeEventListener(ServiceRequestEvent.COMPLETE, onRefreshConnected);
				//sr.removeEventListener(ServiceRequestEvent.ERROR, onRetry);	
			//}
			//sr  = cast action.refresh(roomModel);
			//sr.addEventListener(ServiceRequestEvent.COMPLETE, onRefreshConnected);
			//sr.addEventListener(ServiceRequestEvent.ERROR, onRetry);	
			