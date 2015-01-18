package app.chat.views;
import app.chat.views.View;
import motion.Actuate;
import openfl.display.Sprite;
import openfl.display.Bitmap;

/**
 * ...
 * @author espigah
 */

class VewAnimation
{
	var view:View;
	var holder:Sprite;
	static private inline var MAX:Int = 3;
	
	public function new(view:View) 
	{
		this.view = view;
		holder = new Sprite();
		view.addChild(holder);
	}
	
	public function start()
	{
		
		for (i in 0... VewAnimation.MAX) 
		{
			animation(i);
		}
		
	}
	
	public function animation(i:Int)
	{
		
		var aniamtion:Sprite = new Sprite();
		var bitmap:Bitmap = new Bitmap(view.bitmapData);
		aniamtion.addChild(bitmap);
		
		bitmap.x -= bitmap.width*0.5;
		bitmap.y -= bitmap.height*0.5;
		
		aniamtion.scaleX = 0;
		aniamtion.scaleY = 0;	
		
		var time:Float = (i*0.5) + Math.PI;
		var genericActuator = Actuate.tween(aniamtion, i, { scaleX: 1, scaleY:1/*, alpha: 1*/ } );
		genericActuator.onComplete(onComplete, [i]);
		holder.addChild(aniamtion);
	}
	
	function onComplete (args:Int):Void
	{
		if (args == MAX)
		{
			finish();
		}
	}
	
	function finish() 
	{
		view.bitmap.visible = true;
		holder.visible = false;
		holder.removeChildren();
	}
}