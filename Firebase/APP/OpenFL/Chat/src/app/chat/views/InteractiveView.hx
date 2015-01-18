package app.chat.views;

import app.chat.utils.Posiiton;
import openfl.display.Sprite;

/**
 * ...
 * @author espigah
 */
class InteractiveView extends Sprite
{
	var state0:View;
	var state1:View;
	var state2:View;
	public var posiiton:Posiiton;
	static public inline var PLAYER_1:Int = 1;
	static public inline var PLAYER_2:Int = 1;
	public function new() 
	{
		super();
		state0 = new View(0);
		state1 = new View(1);
		state2 = new View(2);
		initialState();
	}
	
	public function activate(player:Int) 
	{
		if (player == PLAYER_1)
		{
			addChild(state1);
			state1.startAnimation();
		}
		else
		{
			addChild(state2);
			state1.startAnimation();
		}		
	}
	
	function initialState() 
	{		
		addChild(state0);
		state0.active();
	}
	
}