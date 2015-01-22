package;
import haxe.macro.Context;
import haxe.macro.Expr.ExprOf;
import haxe.macro.Expr.Field;

/**
 * ...
 * @author @Espigah-RAXE
 */
class PersistTypes
{

	@:macro public static function build() : Array<Field> 
	{
        var fields = haxe.macro.Context.getBuildFields();
		for (i in fields) 
		{
		 trace(i);
		}
		var cls = haxe.macro.Context.getLocalClass();
		trace(cls);
		 return fields;
	}
	
	@:macro public static function getMethodName() : ExprOf<String>
	{
		//Context.getLocalMethod().toString();
		return { expr: EConst(CString(Context.getLocalMethod().toString())), pos: Context.currentPos() }
	}
	
	@:macro static public function getClassName():ExprOf<String> {
        return { expr: EConst(CString(Context.getLocalClass().toString())), pos: Context.currentPos() }
    }
	
}