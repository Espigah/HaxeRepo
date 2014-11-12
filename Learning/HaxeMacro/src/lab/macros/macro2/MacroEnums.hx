package lab.macros.macro2 ;
import haxe.macro.Context;
import haxe.macro.Expr;
/**
 * ...
 * @author Espigah
 */
class MacroEnums
{

	 macro public static function build() : Array<Field> 
	 {
			var pos = haxe.macro.Context.currentPos();	
			var cl = new Array();
			for ( c in ["A", "B", "C"] )
			{
				//macro:String, 
				  var tint = TPath({ pack : [], name : "String", params : [], sub : null });
				var newFiled =
				{
					name : c,		
					doc : null,
					meta : [],
					access : [APublic, AStatic],
					kind : FVar(tint,macro $v{c}),
					pos : pos
				}
				cl.push(newFiled);
		  
			}
		  return cl;
	}
}