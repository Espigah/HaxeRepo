package app.chat.views;

import app.chat.views.VewAnimation;
import openfl.Assets;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.display.Bitmap;

/**
 * ...
 * @author 
 */
//@:allow(VewAnimation)
//@:access(VewAnimation)
class View extends Sprite
{
	public var bitmap:Bitmap;
	public var bitmapData:BitmapData;
	var animation:VewAnimation;
	public function new(assetNumber:Int) 
	{
		super();
		bitmapData = Assets.getBitmapData("img/b"+assetNumber+".png",false);
		bitmap = new Bitmap(bitmapData);	
		bitmap.x -= bitmap.width*0.5;
		bitmap.y -= bitmap.height * 0.5;
		bitmap.visible = false;
		addChild(bitmap);
		animation = new VewAnimation(this);
	}
	
	public function startAnimation():View
	{
		animation.start();
		return this;
	}
	
	
	
	public function setPostion():View 
	{
		x=50;
		y=50;
		return this;
	}
	
	public function active() 
	{
		bitmap.visible = true;
	}
	
}