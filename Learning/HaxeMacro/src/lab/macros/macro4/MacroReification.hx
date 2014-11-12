package lab.macros.macro4 ;
import haxe.macro.Expr;

/**
 * ...
 * @author Espigah
 */
class MacroReification
{

	 macro public static function repeat(cond:Expr,e:Expr) : Expr {
        return macro while( $cond ) trace($e);
    }
	
}