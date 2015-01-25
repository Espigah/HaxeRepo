package;
import haxe.Json;

/**
 * ...
 * @author @Espigah-RAXE
 */
class DataTransferObject // poderia ser um typedef
{
	public var error:String = "";
	public var message:String = "";
	public var tag:String = "";
	public var result:String;
	public var logger:Array<Dynamic>=[];
	public function new(data:Dynamic = null) 
	{		
		if (data == null) { return; }
		
		error = data.error;
		message = data.message;
		tag = data.tag;
	}
	
	public function getJson():String
	{
		return Json.stringify(this);
	}
	
	public static function convert(string:String):DataTransferObject
	{
		return new DataTransferObject(Json.parse(string));
	}
	
}