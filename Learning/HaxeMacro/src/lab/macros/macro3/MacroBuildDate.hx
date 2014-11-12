package lab.macros.macro3 ;
import haxe.macro.Context;
import haxe.macro.Expr;

/**
 * ...
 * @author Espigah
 */

class MacroBuildDate
{

	macro public static function build():Array<Field>
	{
		 var date = Date.now().toString();
		 
		var pos = haxe.macro.Context.currentPos();	
		var cl = new Array();
		
		
		var tint = TPath({ pack : [], name : "String", params : [], sub : null });
		var newFiled =
		{
			name : "buildDate",		
			doc : null,
			meta : [],
			access : [APublic, AStatic, AInline],
			kind : FVar(tint,macro $v{date}),
			pos : pos
		}
		cl.push(newFiled);
			
		return cl;
      
        //return Context.makeExpr(date, Context.currentPos());
    }
}