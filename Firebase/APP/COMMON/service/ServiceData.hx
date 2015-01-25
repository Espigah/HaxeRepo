package service;
import haxe.Json;

/**
 * ...
 * @author espigah
 */
class ServiceData
{
	public var page:String="";
	public var method:String="";
	public var data:Dynamic;
	public var path:String="";
	public var special:String="";
	public var action:String="";
	public var type:String="";
	public function new(model:Dynamic, action:String, method:String) 
	{
		this.method = method;
		this.action = action;
		data = Json.stringify(model);
	}
	
	public function getString():String
	{
		return 
		CONSTANTS.SPECIAL + "=" + special			+
		"&" + CONSTANTS.ACTION + "=" + action		+
		"&" + CONSTANTS.METHOD + "=" + method		+
		"&" + CONSTANTS.PATH + "=" + path			+
		"&" + CONSTANTS.PAGE + "=" + page 			+	
		"&" + CONSTANTS.DATA + "=" + data			+
		"&" + CONSTANTS.TYPE + "=" + type;
	}
	
}