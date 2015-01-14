package;

import haxe.Json;
import php.Lib;
import php.Web;

/**
 * ...
 * @author espigah
 */

class Main 
{
	
	static function main() 
	{
		//
		//if (Web.getMethod() == CONSTANTS.GET)
		//{
			//php.Lib.println("Error");
		////	return ;
		//}
		
		
		var params = php.Web.getParams();
        var method = params.exists(CONSTANTS.METHOD) ? params.get(CONSTANTS.METHOD) : '';
        var page = params.exists(CONSTANTS.PAGE) ? params.get(CONSTANTS.PAGE) : '';
        var data = params.exists(CONSTANTS.DATA) ? params.get(CONSTANTS.DATA) : '';
		var path = params.exists(CONSTANTS.PATH) ? params.get(CONSTANTS.PATH) : '';
		var returndata:String = "";
			
		//var dataObject:Dynamic = Json.parse(data);
		
	
		if (CONSTANTS.ENTER == method)
		{
			returndata = enter(path, page, data);
			php.Lib.println(returndata);
			return ;
		}
		
		var firebase =  new Firebase(CONSTANTS.FIREBASE+path+page);		
		switch (method) 
		{			
			case CONSTANTS.SET:
				returndata = firebase.set( data );
			case CONSTANTS.UPDATE:
				returndata = firebase.update( data );
			case CONSTANTS.PUSH:
				returndata = firebase.push( data );
			case CONSTANTS.DELETE:
				returndata = firebase.delete( data );		
			default:				
		}        
		
		
		php.Lib.println(returndata);
	}
	
	static private function enter(path, page, data):String
	{
		var dist:String = CONSTANTS.FIREBASE;
		if (path != "")
		{
			dist += "/" + path;
		}
		if (page != "")
		{
			dist += "/" + page;
		}
		var firebase:Firebase =  new Firebase(dist);
		if (firebase.val() != null)
		{
			return Json.stringify( { error:"Usuario ja cadastrado." } );
		}		
		return firebase.set(data);
	}

}