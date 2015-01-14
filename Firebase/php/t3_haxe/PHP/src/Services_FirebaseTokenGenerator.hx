package ;

/**
 * ...
 * @author 
 */
extern class Services_FirebaseTokenGenerator
{
	
	 static function __init__():Void untyped {
        __call__("require_once", "FirebaseToken.php");
    }
	public function new($secret:String):Void;
	public function createToken(data:Dynamic, options:Dynamic = null):Dynamic;
}