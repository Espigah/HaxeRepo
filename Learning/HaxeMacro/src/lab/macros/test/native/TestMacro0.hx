package lab.macros.test.native;
import haxe.unit.TestCase;
import lab.macros.macro0.FileNames;

/**
 * ...
 * @author Espigah
 */

 @keep
class TestMacro0 extends TestCase
{

	public function testBasic() 
	{			
		assertTrue(Reflect.hasField(FileNames, "assets1__txt"));	
		assertFalse(Reflect.hasField(FileNames, "assets2__txt"));		
		assertTrue(Reflect.hasField(FileNames, "assets3__txt"));
        assertEquals( FileNames.assets1__txt, "assets1.txt" );
    }
	
}