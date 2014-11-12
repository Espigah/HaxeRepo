package lab.macros.test.native;

import haxe.unit.TestCase;
import lab.macros.macro1.FieldClass;

/**
 * ...
 * @author Espigah
 */
class TestMacro1 extends TestCase
{

	public function testBasic() 
	{	
		var fc = new FieldClass();
		assertTrue(Reflect.hasField(fc, "hello"));
	}
	
}