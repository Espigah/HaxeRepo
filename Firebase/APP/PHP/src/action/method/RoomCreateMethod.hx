package action.method;
import haxe.Json;
import model.Model.RoomModel;

/**
 * ...
 * @author espigah
 */
class RoomCreateMethod
{

	public function new(roomModel:RoomModel) 
	{
		var firebase:Firebase =  new Firebase(Main.dist);
		//var hashPhp:Dynamic = firebase.val();
		//if (hashPhp == null  )
		//{
			//Main.dto.error = "Usuario não cadastrado.";	
			//return;
		//}
		//var hashHaxe:Dynamic = Lib.hashOfAssociativeArray(hashPhp);	
		//var user:RoomModel = Json.parse(Main.data);
		Main.dto.result = "";			
		var r = firebase.set(Main.data);
		Main.dto.result = Json.stringify(r);
	}
	
}