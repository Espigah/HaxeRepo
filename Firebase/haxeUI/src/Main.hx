package;

import haxe.ui.toolkit.controls.Button;
import haxe.ui.toolkit.core.interfaces.IDisplayObject;
import haxe.ui.toolkit.core.Root;
import haxe.ui.toolkit.core.Toolkit;
import haxe.ui.toolkit.events.UIEvent;
import haxe.ui.toolkit.themes.GradientTheme;
import openfl.display.Sprite;
import openfl.Lib;

/**
 * ...
 * @author espigah
 */

class Main extends Sprite 
{

	public function new() 
	{
		super();
		
		// Assets:
		// openfl.Assets.getBitmapData("img/assetname.jpg");
		
		Toolkit.theme = new GradientTheme();
        Toolkit.init();
       
	      Toolkit.openFullscreen(function(root:Root) {
            var view:IDisplayObject = Toolkit.processXmlResource("ui/hello-world.xml");
            view.addEventListener(UIEvent.CLICK, function(e:UIEvent) {
               // e.component.text = "You clicked me!";
            });
            root.addChild(view);
       });
	}
}
