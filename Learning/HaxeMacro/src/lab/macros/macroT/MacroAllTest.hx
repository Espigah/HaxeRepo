package lab.macros.macroT;

/**
 * @author Espigah


 */
// 		var r = new haxe.unit.TestRunner();
//         r.add(new TestMacro0());
//         r.add(new TestMacro3());
//         // your can add others TestCase here

//         // finally, run the tests
//         r.run();



import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.unit.TestRunner;

import sys.FileSystem;
@:require(sys)
class MacroAllTest
{

	macro public static function build():Array<Field>
	{
		var directory:String = "src/lab/macros/test/native/";
		var fileReferences:Array<FileRef> = [];
		var fileClassReferences:Array<String> = [];
        var fileNames = FileSystem.readDirectory(directory);
		
        for (fileName in fileNames)
        {			
            if (!FileSystem.isDirectory(directory + fileName))
            {
				if (isValidFileName(fileName))
				{					
					var fileRef:FileRef = new FileRef(fileName);
					fileReferences.push(fileRef);
					fileClassReferences.push(fileRef.fullClassName);
					
				}          
            }
        }
		
		  var fields:Array<Field> = Context.getBuildFields();		
		  
		 var str : ComplexType = macro : String;
        var arr : ComplexType = macro : Array<$str>;
	
		var newFiled =
			{
				name : "testList",		
				doc : null,
				meta : [],
				access : [APublic],
				kind : FVar(arr, macro $v{fileClassReferences}),			
				pos : Context.currentPos()
			}		
			fields.push(newFiled);
			
		 //var dd : ComplexType = macro : Dynamic;
		//var f = macro $v{fileClassReferences[0]};
		//var a = macro Type.resolveClass($f ) ;
		//var c = macro Type.createInstance($v { a }, []);
		////trace(macro $a);
		//trace(c);
		//trace(macro $c);
			//
			//var newFiled2=
			//{
				//name : "objs",		
				//doc : null,
				//meta : [],
				//access : [APublic],
				//kind : FVar(dd, c),			
				//pos : Context.currentPos()
			//}		
			//fields.push(newFiled2);
			//
		return fields;
      
        //return Context.makeExpr(date, Context.currentPos());
    }
	 //macro static function decl( vname : String ):Expr {
        //var str : ComplexType = macro : String;
        //var arr : ComplexType = macro : Array<Array<$str>>;
        //return macro var $vname : arr = [];
    //}
	static private function isValidFileName(fileName:String):Bool 
	{
		//trace(fileName.substring(0, 4));
		return fileName.substring(0, 4) == "Test";
	}
}


// internal class
class FileRef
{
    public var value:String;
    public var type:String;
    public var pack:String;
    public var documentation:String;
    public var classs:Dynamic;
    public var fullClassName:String;
    public function new(value:String)
    {
        this.value = value;
        pack = "lab.macros.test.native";
        // replace forbidden characters to underscores, since variables cannot use these symbols.
        this.type = StringTools.replace(value, ".hx", "");    
		//test class		
		classs = Type.getClass(pack +"."+type);		
        // generate documentation
        this.documentation = "";
	
		//trace(Reflect.(classs));
		fullClassName = pack + "." + type;

		
		//haxe.macro.Context.defineType(c);
		//haxe.macro.Context.defineType(a);
		//trace(macro Type.resolveClass($v{fullClassName}));
    }
}


//trace(createRunner());
//
//
		//for (fileRef in fileReferences)
		//{
			//trace(fileRef.fullClassName);
			//var tint = TPath({ pack : [], name : fileRef.fullClassName, params : [], sub : null });
			//var newFiled =
			//{
				//name : fileRef.value,		
				//doc : null,
				//meta : [],
				//access : [APublic],
				//kind : FVar(tint,macro $v{fileRef.pack+fileRef.type}),
				////kind : FVar(tint,null),
				//pos : Context.currentPos()
			//}
			//
			//
			 ////haxe.macro.Context.defineType(fileRef.classs);
			//fields.push(newFiled);
		//}
			//
		//return fields;
      //
        ////return Context.makeExpr(date, Context.currentPos());
    //}
	 //macro private static function createRunner() : Expr 
	 //{
		 ////var r = 
		////r.add(new TestMacro0());
        ////return macro Type.createInstance(Type.getClass("haxe.unit.TestRunner"),[]);
        //return macro function(){};
    //}