package app.chat.views;

import app.chat.utils.Posiiton;
import app.events.InteractiveViewEvent;
import openfl.display.Sprite;
import openfl.events.Event;

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
	static public inline var PLAYER_2:Int = 2;
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
		buttonMode = false;
		mouseEnabled = false;
		
		if (player == CONSTANTS.PLAYER_1_VALUE)
		{
			addChild(state1);
			state1.startAnimation();
		}
		else
		if (player == CONSTANTS.PLAYER_2_VALUE)		
		{
			addChild(state2);
			state2.startAnimation();
		}		
	}
	
	public function update() 
	{		
		activate(posiiton.value);
		dispatchEvent(new InteractiveViewEvent(InteractiveViewEvent.UPDATE,this));
	}
	
	function initialState() 
	{		
		addChild(state0);
		state0.active();
	}
	
}