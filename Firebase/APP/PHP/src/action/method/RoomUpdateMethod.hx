package action.method;
import haxe.Json;
import model.Model.GridModel;
import model.Model.RoomModel;
import php.Lib;

/**
 * ...
 * @author espigah
 */
class RoomUpdateMethod
{

	public function new(gridModel:GridModel) 
	{
		var dist:String = Main.dist;	
		var firebase = new Firebase(dist + "/" + gridModel.c );
		
		var resultUpdate = firebase.update('{"'+gridModel.l+'":'+ gridModel.value+'}');
			
		var roomDataEntity = firebase.val();
		
		//var haxeArray:Dynamic =  roomDataEntity;
		//haxeArray = 1;
		//haxeArray[gridModel.c][gridModel.l] = gridModel.value ;
		//Main.dto.logger.push(haxeArray);
		//Main.dto.logger.push(haxeArray[0]);
		//
	
		Main.dto.result = Json.stringify(roomDataEntity);
	}
	
}