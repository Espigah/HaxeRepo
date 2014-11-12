package lab.macros.test.native;
import haxe.unit.TestRunner;
import lab.macros.test.native.TestMacro0;
import lab.macros.test.native.TestMacro1;
import lab.macros.test.native.TestMacro2;
import lab.macros.test.native.TestMacro3;
import lab.macros.test.native.TestMacro4;


/**
 * ...
 * @author Espigah
 */
  #if !macro @:build(lab.macros.macroT.MacroAllTest.build()) #end 
class NativeTestRunner
{

	public function new() 
	{
		//@Todo - do by macro only
		//trace(objs);
		var testRunner = new TestRunner();	
		for (className in testList) 
		{			
			var testMacroClass = Type.resolveClass(className);					
			testRunner.add(cast Type.createInstance(testMacroClass,[]));
		}
		testRunner.run();
	}
	
}

