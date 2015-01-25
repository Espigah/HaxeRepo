package;
import app.utils.PersistTypes;
import openfl.display.Sprite;
import src.app.chat.service.action.FormAction;

/**
 * ...
 * @author @Espigah-RAXE
 */


class Tester extends Sprite 
{

	public function new() 
	{
		super();
		 new FormAction();
	}
	
	function b()
	{
		trace("OK");
		var a = PersistTypes.getClassName();
		var b = PersistTypes.getMethodName();
		trace(a,b);
	}
}