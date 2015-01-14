package;

import haxe.ui.toolkit.core.interfaces.IDisplayObject;
import haxe.ui.toolkit.core.Root;
import haxe.ui.toolkit.core.Toolkit;
import haxe.ui.toolkit.events.UIEvent;
import haxe.ui.toolkit.themes.GradientTheme;
import openfl.display.Sprite;
import openfl.Lib;
import openfl.net.URLRequest;
import openfl.net.URLRequestMethod;
import openfl.net.URLLoader;
import openfl.events.Event;
import openfl.events.IOErrorEvent;
import src.app.chat.controller.UIController;

/**
 * ...
 * @author espigah
 */

class Main extends Sprite 
{
	static inline var URL:String = "http://fabriciogoncalves.com/php/echo.php";
	var loader:URLLoader;
	public function new() 
	{
		super();
		// Assets:
		// openfl.Assets.getBitmapData("img/assetname.jpg");
		
		//var request:openfl.net.URLRequest = new openfl.net.URLRequest(URL);
		//request.method = URLRequestMethod.POST;
		//request.contentType = "text/plain";
		//request.data = "name=123456";
		//loader = new URLLoader(request);
		//loader.addEventListener(Event.COMPLETE, onComplete );
		//loader.addEventListener(Event.INIT, onNetworkError);
		//loader.addEventListener(IOErrorEvent.IO_ERROR, onIOError);
		//loader.load(request);
		Toolkit.theme = new GradientTheme();
        Toolkit.init();
       
	      Toolkit.openFullscreen(function(root:Root) {
			var uiController:UIController =  new UIController();
            var view:IDisplayObject = uiController.view ;		
            root.addChild(view);
       });
	}
	
	private function onIOError(e:Event):Void 
	{
		trace("onIOError",e);
	}
	
	private function onNetworkError(e:Event):Void 
	{
		trace("onNetworkError",e);
	}
	
	private function onComplete(e:Event):Void 
	{
		trace("onComplete", e);
		trace(loader.data);
	}
}
