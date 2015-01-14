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
		
		if (Web.getMethod() == CONSTANTS.GET)
		{
			
		}
		
		var params = php.Web.getParams();
        var method = params.exists(CONSTANTS.METHOD) ? params.get(CONSTANTS.METHOD) : '';
        var page = params.exists(CONSTANTS.PAGE) ? params.get(CONSTANTS.PAGE) : '';
        var data = params.exists(CONSTANTS.DATA) ? params.get(CONSTANTS.DATA) : '';
		
		var firebase =  new Firebase(CONSTANTS.FIREBASE+page);
		var returndata:String="";
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
		var s = new Services_FirebaseTokenGenerator("Z0grBDh4Om5FfIRSfccTZ6lf1ZkQlOp9cO4cusk4");
		php.Lib.println(s.createToken(["uid:5"]));
	//	php.Lib.println(returndata.indexOf("error"));
		//Web.setReturnCode(400);
		//var jsonData:Dynamic = Json.parse(returndata);
		//var child = Reflect.getProperty(jsonData, "name");
        //php.Lib.println('returndata ' + returndata);
        //php.Lib.println('<p>returndata ' + jsonData);
        //php.Lib.println('<p>returndata ' + Reflect.getProperty(jsonData,"name"));
        ////php.Lib.println('<p>returndata ' + Reflect.getProperty(jsonData,"name"));
        //php.Lib.println('<p>returndata ' + firebase.child(child));
        //php.Lib.println('<p>returndata ' + firebase.child("-JfB4o-QFmk2R8nvccyr "));
		
        //php.Lib.print('getClientHeaders ' + Web.getClientHeaders() + '!');
        //php.Lib.print('getMethod ' + Web.getMethod() + '!');
		
	}

}