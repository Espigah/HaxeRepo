package;

import action.FormAction;
import action.method.FormEnterMethod;
import action.method.FormRegisterMethod;
import action.RoomAction;
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
	static public var action:String; // action -> default -> get//post//etc
	static public var page:String;
	static public var path:String; //
	static public var dist:String; // distino // full path
	static public var data:String; // json
	static public var type:String; // json
	static function main() 
	{
		Main.dto = new DataTransferObject();
		#if debug 
			tester();
		 return;
		#end
		params = php.Web.getParams();
        special = params.exists(CONSTANTS.SPECIAL) ? params.get(CONSTANTS.SPECIAL) : '';
        method = params.exists(CONSTANTS.METHOD) ? params.get(CONSTANTS.METHOD) : '';
        page = params.exists(CONSTANTS.PAGE) ? params.get(CONSTANTS.PAGE) : '';
        data = params.exists(CONSTANTS.DATA) ? params.get(CONSTANTS.DATA) : '';
		path = params.exists(CONSTANTS.PATH) ? params.get(CONSTANTS.PATH) : '';
		type = params.exists(CONSTANTS.TYPE) ? params.get(CONSTANTS.TYPE) : '';
		action = params.exists(CONSTANTS.ACTION) ? params.get(CONSTANTS.ACTION) : '';
		dist = CONSTANTS.FIREBASE;		
		if (path != "")
		{
			dist += "/" + path;
		}
		if (page != "")
		{
			dist += "/" + page;
		}
		
		if (type == "" && action != "")
		{
			var dataObject:Dynamic = Json.parse(data);
			
			var ClassT:Dynamic = Type.resolveClass("action."+action);
			var instance = Type.createInstance(ClassT,[]);
			Reflect.callMethod(instance, Reflect.field(instance,method), [dataObject]);
			
			//switch (method) 
			//{
				//case CONSTANTS.REGISTER:
					//new FormAction().register(dataObject);
				//case CONSTANTS.ENTER:						
					//new FormAction().enter(dataObject);
			//}		
		}
		else
		{
			var firebase =  new Firebase(CONSTANTS.FIREBASE+path+page);		
			switch (type) 
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
	
	static private function tester() 
	{
		//Main.dist = "https://intense-torch-9712.firebaseio.com/rooms/c7b04530b1118f455f88fe5c6d3357f2edee635ebf27efcd71efe4cc5052d67e/data";
		//new RoomAction().update( {c:0,l:0, value:2 } );
		//php.Lib.println(Main.dto.getJson());

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
			//dto.error = "Usuario não cadastrado.";	
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