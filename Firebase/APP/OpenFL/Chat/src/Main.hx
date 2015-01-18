package;

import app.chat.views.GrdView;
import app.chat.views.View;
import haxe.ui.toolkit.core.interfaces.IDisplayObject;
import haxe.ui.toolkit.core.Root;
import haxe.ui.toolkit.core.Toolkit;
import haxe.ui.toolkit.themes.GradientTheme;
import motion.Actuate;
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
			
			
			
			
			
			onChange(null);
       });
	   
	   
	}
	
	private function onChange(e:Event):Void 
	{
		trace("onChange", e);
			var gradeView = new GrdView();
			Lib.current.stage.addChild(gradeView);			
			gradeView.x = Lib.current.stage.width * 0.5;
			gradeView.y = Lib.current.stage.height * 0.5;
			gradeView.x -= gradeView.width * 0.5;
			gradeView.y -= gradeView.height * 0.5;
			gradeView.alpha = 0;
			Actuate.tween(gradeView, 0.5, { alpha: 1 } );
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
