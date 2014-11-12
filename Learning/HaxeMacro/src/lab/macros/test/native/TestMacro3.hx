package lab.macros.test.native;

import haxe.unit.TestCase;
import lab.macros.macro3.BuildDate;

/**
 * ...
 * @author Espigah
 */
class TestMacro3 extends TestCase
{

	public function testBasic() {
		
		print("Date = "+ BuildDate.buildDate);
        assertTrue(Reflect.hasField(BuildDate, "buildDate") );
    }
	
}