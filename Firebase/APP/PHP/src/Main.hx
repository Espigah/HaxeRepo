package;

import action.FormAction;
import action.method.EnterMethod;
import action.method.RegisterMethod;
import haxe.Json;
import php.Lib;
import php.Web;

/**
 * ...
 * @author espigah
 */

class Main 
{
	static public var dto:DataTransferObject;
	static public var params;
	static public var special:String; //action -> outras
	static public var method:String; // action -> default -> get//post//etc
	static public var page:String;
	static public var path:String; //
	static public var dist:String; // distino // full path
	static public var data:String; // json
	static function main() 
	{
		Main.dto = new DataTransferObject();
		//
		//if (Web.getMethod() == CONSTANTS.GET)
		//{
			//php.Lib.println("Error");
		////	return ;
		//}
		params = php.Web.getParams();
        special = params.exists(CONSTANTS.SPECIAL) ? params.get(CONSTANTS.SPECIAL) : '';
        method = params.exists(CONSTANTS.METHOD) ? params.get(CONSTANTS.METHOD) : '';
        page = params.exists(CONSTANTS.PAGE) ? params.get(CONSTANTS.PAGE) : '';
        data = params.exists(CONSTANTS.DATA) ? params.get(CONSTANTS.DATA) : '';
		path = params.exists(CONSTANTS.PATH) ? params.get(CONSTANTS.PATH) : '';
		dist = CONSTANTS.FIREBASE;
		if (path != "")
		{
			dist += "/" + path;
		}
		if (page != "")
		{
			dist += "/" + page;
		}
		
		if (special == "1")
		{
			var dataObject:Dynamic = Json.parse(data);
			switch (method) 
			{
				case CONSTANTS.REGISTER:
					new FormAction().register(dataObject);
				case CONSTANTS.ENTER:						
					new FormAction().enter(dataObject);
			}		
		}
		else
		{
			var firebase =  new Firebase(CONSTANTS.FIREBASE+path+page);		
			switch (method) 
			{			
				case CONSTANTS.SET:
					//returndata = firebase.set( data );
				case CONSTANTS.UPDATE:
					//returndata = firebase.update( data );
				case CONSTANTS.PUSH:
					//returndata = firebase.push( data );
				case CONSTANTS.DELETE:
					//returndata = firebase.delete( data );		
				default:				
			}   			
		}
		php.Lib.println(Main.dto.getJson());
	}
	
	
	
	//static private function register(path, page, data)
	//{		
		//var firebase:Firebase =  new Firebase(dist);
		//if (firebase.val() != null)
		//{
			//dto.error = "Usuario ja cadastrado.";			
		//}	
		//var r = firebase.set(data);
		//dto.message = r;
	//}
	//
	//static private function enter(path, page, data)
	//{
		//var dist:String = CONSTANTS.FIREBASE;
		//if (path != "")
		//{
			//dist += "/" + path;
		//}
		//if (page != "")
		//{
			//dist += "/" + page;
		//}
		//var firebase:Firebase =  new Firebase(dist);
		//var json:String = firebase.val();
		//if (json == null || json == "" )
		//{
			//dto.error = "Usuario n�o cadastrado.";	
			//return;
		//}
		//var user:FormModelData = Json.parse(data);
	//dto.message = "";
		//var userOrigen:FormModelData = Json.parse(json);
		//if (userOrigen.login == user.login)
		//{
			//dto.message = "OK";
		//}
		//dto.result = json;
	//}
}