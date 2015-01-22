package;
import openfl.display.Sprite;

/**
 * ...
 * @author @Espigah-RAXE
 */


class Tester extends Sprite 
{

	public function new() 
	{
		super();
		b();
	}
	
	function b()
	{
		trace("OK");
		var a = PersistTypes.getClassName();
		var b = PersistTypes.getMethodName();
		trace(a,b);
	}
}