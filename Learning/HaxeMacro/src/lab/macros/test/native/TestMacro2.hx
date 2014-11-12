package lab.macros.test.native;

import haxe.unit.TestCase;
import lab.macros.macro2.EnumClass;

/**
 * ...
 * @author Espigah
 */
class TestMacro2 extends TestCase
{

	public function testBasic() 
	{	
		assertTrue(EnumClass.A != EnumClass.B);
	}
}