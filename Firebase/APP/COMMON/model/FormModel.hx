package model;

import haxe.crypto.Sha1;
import haxe.Json;
import model.ModelData.FormModelData;


/**
 * ...
 * @author espigah
 */
class FormModel extends Model
{
	//@:isVar public var login(get, set):String;
	//@:isVar public var pass(get, set):String;
	
	public var data:FormModelData;
	public var isRegister:Bool;
	
	public function new() 
	{
		super();
		data = {};
	}
	
	
	function updateUID():Void 
	{
		data.uid = Sha1.encode(data.pass+data.login);
	}
	
	override public function getJSON():String 
	{
		data.pass = Sha1.encode(data.pass);
		updateUID();
		return Json.stringify(data);
	}
	
}
//typedef FormModelData = {
   //@:optional var login : String;   
   //@:optional var pass : String;   
   //@:optional var uid : String;   
//}
