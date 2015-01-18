package app.chat.views;
import app.chat.utils.Posiiton;
import app.chat.utils.Vector2D;
import app.chat.views.InteractiveView;
import haxe.ds.Vector;
import openfl.display.Sprite;
import openfl.events.Event;
import openfl.events.MouseEvent;
/**
 * ...
 * @author espigah
 */
class GrdView extends Sprite
{
	var mapPosiiton:Array<Array<Posiiton>>;
	public function new() 
	{
		super();
		var map:Array<Array<Int>> = Vector2D.map;	
		mapPosiiton = new Array<Array<Posiiton>>();
		for (i in 0 ... map.length) 
		{
			mapPosiiton[i] = [];
			for (k in 0 ... map[i].length) 
			{
				var iv:InteractiveView = new InteractiveView();
				iv.addEventListener(MouseEvent.CLICK, onClick);
				iv.x = (i*5)*11;
				iv.y = (k*5)*11;						
				mapPosiiton[i][k] = new Posiiton(i,k,iv,0);				
				addChild(iv);				
			}
		}		
		
	}
	
	private function onClick(e:MouseEvent):Void 
	{
		e.stopImmediatePropagation();
		var iv:InteractiveView = cast e.currentTarget;
		iv.activate(1);
		iv.removeEventListener(MouseEvent.CLICK, onClick);
		dispatchEvent(new Event(MouseEvent.CLICK));
	}
	
}