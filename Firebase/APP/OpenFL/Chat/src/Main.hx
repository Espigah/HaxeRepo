package;

import app.chat.presenter.GrdPresenter;
import app.chat.presenter.RoomPresenter;
import app.chat.views.GrdView;
import app.chat.views.View;
import app.events.UIEvent;
import app.utils.Session;
import haxe.crypto.Sha256;
import haxe.ui.toolkit.core.interfaces.IDisplayObject;
import haxe.ui.toolkit.core.Root;
import haxe.ui.toolkit.core.Toolkit;
import haxe.ui.toolkit.themes.GradientTheme;
import model.Model.RoomModel;
import motion.Actuate;
import openfl.display.Sprite;
import openfl.events.Event;
import openfl.Lib;
import openfl.net.URLLoader;
import src.app.chat.controller.UIController;
import src.app.chat.service.action.FormAction;
import src.app.chat.service.action.RoomAction;

/**
 * ...
 * @author espigah
 */

class Main extends Sprite 
{
	//static inline var URL:String = "http://fabriciogoncalves.com/php/echo.php";
	//var loader:URLLoader;
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
			view.addEventListener(UIEvent.CLOSE, onChange);
			view.addEventListener(UIEvent.CLOSE, onRemove);	
       });
	   
	}
	
	private function onChange(e:Event):Void 
	{
		trace("onChange", e);
		new GrdPresenter();
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
