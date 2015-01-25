package app.utils;
import haxe.macro.Context;
import haxe.macro.Expr.ExprOf;
import haxe.macro.Expr.Field;

/**
 * ...
 * @author @Espigah-RAXE
 */
class PersistTypes
{

	//macro public static function build() : Array<Field> 
	//{
        //var fields = haxe.macro.Context.getBuildFields();
		//for (i in fields) 
		//{
		 //trace(i);
		//}
		//var cls = haxe.macro.Context.getLocalClass();
		//trace(cls);
		 //return fields;
	//}
	
	macro public static function getMethodName() : ExprOf<String>
	{
		//Context.getLocalMethod().toString();
		return { expr: EConst(CString(Context.getLocalMethod().toString())), pos: Context.currentPos() }
	}
	
	macro static public function getClassName():ExprOf<String> {	
		var className:String = Context.getLocalClass().toString();
		var index = className.lastIndexOf(".");
		className = className.substring(index+1, className.length);
        return { expr: EConst(CString(className)), pos: Context.currentPos() }
    }
	
}