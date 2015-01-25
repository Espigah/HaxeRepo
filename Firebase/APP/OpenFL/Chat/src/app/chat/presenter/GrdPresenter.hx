package app.chat.presenter;
import app.chat.views.GrdView;
import app.chat.views.InteractiveView;
import app.events.RoomEvents;
import haxe.Timer;
import model.Model.GridModel;
import motion.Actuate;
import openfl.events.Event;
import openfl.events.MouseEvent;
import openfl.Lib;

/**
 * ...
 * @author espigah
 */
class GrdPresenter
{
	var roomPresenter:RoomPresenter;
	var gridView:GrdView;
	public function new() 
	{
		
		setupGrid();	
		connect();
		//var t = new Timer(2000);
		//t.run = function ()
		//{
			//t.stop();
			//
			//gridView.updateMap([[0, 0, 0], [0, 1, 1], [1, 2, 2]]);
		//}
	}
	
	
	 function connect():Void
	{
		roomPresenter = new RoomPresenter();
		roomPresenter.addEventListener(RoomEvents.CONNECTED, onRoomConnectedHandler);
		roomPresenter.connect(onLoopHandler);
	}
	
	private function onRoomConnectedHandler(e:Event):Void 
	{
		trace("OK");
		gridView.visible = true;
		gridView.alpha = 0;
		Actuate.tween(gridView, 0.7, { alpha: 1 } );
	}
	
	 function setupGrid():Void
	{
		gridView = new GrdView();
		gridView.visible = false;
		gridView.addEventListener(MouseEvent.CLICK, onClickGridHandler);
		Lib.current.stage.addChild(gridView);			
		gridView.x = Lib.current.stage.width * 0.5;
		gridView.y = Lib.current.stage.height * 0.5;
		gridView.x -= gridView.width * 0.5;
		gridView.y -= gridView.height * 0.5;
		
	}
	
	function onClickGridHandler(e:MouseEvent):Void 
	{
		
		if (Std.is(e.target,InteractiveView) == false)
		{
			return;
		}
		var iv:InteractiveView;
		iv = cast(e.target,InteractiveView);
		
		var gridModel:GridModel = { l:iv.posiiton.l , c:iv.posiiton.c, value: iv.posiiton.value };
		roomPresenter.roomModel.data = gridView.map;		
		roomPresenter.update(gridModel);
	}
	
	function onLoopHandler():Void
	{
		roomPresenter.refresh(onRefreshHandler);
	}
	
	function onRefreshHandler():Void
	{
		gridView.updateMap(	roomPresenter.roomModel.data );
	}
	
}