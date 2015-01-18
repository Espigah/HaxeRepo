package app.chat.service;

/**
 * ...
 * @author espigah
 */
class ServiceData
{
	public var page:String;
	public var method:String;
	public var data:Dynamic;
	public var path:String;
	public var special:String;
	
	public function new() 
	{
		
	}
	
	public function getString():String
	{
		return CONSTANTS.SPECIAL + "=" + special		+"&" + CONSTANTS.PATH + "=" + path		+"&" +CONSTANTS.PAGE + "=" + page +"&" +	CONSTANTS.METHOD + "=" + method	+"&" +	CONSTANTS.DATA + "=" + data;
	}
	
}