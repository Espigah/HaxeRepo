package action.method;
import haxe.Json;
import model.Model.RoomModel;
import php.Lib;

/**
 * ...
 * @author espigah
 */
class RoomRefreshMethod
{

	public function new(roomModel:RoomModel) 
	{
		var dist:String = Main.dist;	
		var firebase = new Firebase(dist);
		var roomNativeData:Dynamic = firebase.val();
		var roomModel:RoomModel = Lib.objectOfAssociativeArray(roomNativeData);			
		Main.dto.result = Json.stringify( roomModel);
	}
	
}