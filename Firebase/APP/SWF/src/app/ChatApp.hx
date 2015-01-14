package app;
import flash.display.Sprite;
import flash.Lib;
import haxe.Http;
import haxe.Timer;



/**
 * ...
 * @author espigah
 */
class ChatApp extends Sprite
{
	static inline var URL:String = "http://fabriciogoncalves.com/php/haxe/";
	public function new() 
	{
		super();
		doRequest();
	}
	
	function createUser()
	{  
		
	}
	
	function doRequest()
	{  
		//trace("request");
		
		var t1 = flash.Lib.getTimer();
		
		var request = new haxe.Http(URL);
		request.onData = onData;
		request.onError = onError;
		request.onStatus = function (val:Dynamic)
		{
			var t3 = flash.Lib.getTimer();
			trace("Delay:", t3 - t1);
			doRequest();
		};
		request.setParameter("name", "Teste");
		request.request(true);
	}
	
	public static function onData(msg:Dynamic) 
	{
		//trace("onData",msg);
	}

	public static function onError(msg:Dynamic) 
	{
		//trace("onError",msg);
	}

	public static function onStatus(val:Dynamic) 
	{
		trace("onStatus",val);
	}
}