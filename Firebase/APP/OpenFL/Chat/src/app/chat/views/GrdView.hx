package app.chat.views;
import app.chat.utils.Posiiton;
import app.chat.utils.Vector2D;
import app.chat.views.InteractiveView;
import app.events.InteractiveViewEvent;
import app.utils.Session;
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
	public var mapPosiiton:Array<Array<Posiiton>>;
	public var map:Array<Array<Int>>;
	public function new() 
	{
		super();
		map = Vector2D.map;	
		mapPosiiton = new Array<Array<Posiiton>>();
		for (i in 0 ... map.length) 
		{
			mapPosiiton[i] = [];
			for (k in 0 ... map[i].length) 
			{
				var iv:InteractiveView = new InteractiveView();
				iv.buttonMode = true;
				iv.mouseChildren = false;
				iv.addEventListener(InteractiveViewEvent.UPDATE, onUpdateView);
				iv.addEventListener(MouseEvent.CLICK, onClick);
				iv.x = (i*5)*11;
				iv.y = (k*5)*11;						
				mapPosiiton[i][k] = new Posiiton(i,k,iv);				
				addChild(iv);				
			}
		}		
		
	}
	
	private function onUpdateView(e:InteractiveViewEvent):Void 
	{
		var viewPosition:Posiiton = e.interactiveView.posiiton;
		map[viewPosition.l][viewPosition.c] = viewPosition.value;
	}
	
	private function onClick(e:MouseEvent):Void 
	{
		//e.stopImmediatePropagation();
		var iv:InteractiveView = cast e.currentTarget;
		iv.removeEventListener(MouseEvent.CLICK, onClick);
		iv.posiiton.value = if (Session.player.login == "fake1")
		{
			1;
		}
		else
		{
			2;
		}
				
		//dispatchEvent(e);		
	}
	
	public function updateMap(newMap:Array<Array<Int>>):Void 
	{
		for (i in 0 ... newMap.length) 
		{
			for (k in 0 ... newMap[i].length) 
			{
				var value:Int = newMap[i][k];
				var position:Posiiton = mapPosiiton[i][k];
				if (position.value != value && value != 0)
				{
					position.value = value;
				}
			}
		}
	}
	
}