package lab.macros.macro1 ;

/**
 * ...
 * @author Espigah
 */
import haxe.macro.Context;
import haxe.macro.Expr;
class MacroFields
{
   macro public static function build() : Array<Field> {        
        var pos = haxe.macro.Context.currentPos();
        var fields = haxe.macro.Context.getBuildFields();
        // add a new public class field named "hello" with type "Int"
        var tint = TPath({ pack : [], name : "Int", params : [], sub : null });
        fields.push({ name : "hello", doc : null, meta : [], access : [APublic], kind : FVar(tint,null), pos : pos });
        return fields;
    }
}