package;

import app.chat.views.View;
import haxe.ui.toolkit.core.interfaces.IDisplayObject;
import haxe.ui.toolkit.core.Root;
import haxe.ui.toolkit.core.Toolkit;
import haxe.ui.toolkit.themes.GradientTheme;
import openfl.display.Sprite;
import openfl.events.Event;
import openfl.Lib;
import openfl.net.URLLoader;
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
	
		Toolkit.theme = new GradientTheme();
        Toolkit.init();
       
	      Toolkit.openFullscreen(function(root:Root) {
			var uiController:UIController =  new UIController();
            var view:IDisplayObject = uiController.view ;		
            root.addChild(view);
			view.x = root.width * 0.5;
			view.y = root.height * 0.5;		
			view.x -= view.width * 0.5;
			view.y -= view.height * 0.5;
			
			function onRemove(e:Event):Void 
			{
				root.removeChild(view);
				root.dispose();
			}
			view.addEventListener(Event.CHANGE, onChange);
			view.addEventListener(Event.CHANGE, onRemove);
			Lib.current.stage.addChild(new View(1).startAnimation().setPostion());
       });
	   
	   
	}
	
	private function onChange(e:Event):Void 
	{
	
	}
	//private function onIOError(e:Event):Void 
	//{
		//trace("onIOError",e);
	//}
	//
	//private function onNetworkError(e:Event):Void 
	//{
		//trace("onNetworkError",e);
	//}
	//
	//private function onComplete(e:Event):Void 
	//{
		//trace("onComplete", e);
		//trace(loader.data);
	//}
}
