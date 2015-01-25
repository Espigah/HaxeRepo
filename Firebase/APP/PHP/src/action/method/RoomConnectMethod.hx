package action.method;
import haxe.Json;
import model.Model.RoomModel;
import php.Lib;

/**
 * ...
 * @author espigah
 */
class RoomConnectMethod
{
	var firebase:Firebase; 
	public function new(model:RoomModel) 
	{		
		var hashPhp = findRoomPage();	
		if (hashPhp == null)
		{
			Main.dto.error = "Sala não encontrada.";	
			return null;
		}
		
		var roomData = findRoomData(hashPhp);
		updateRoom(roomData);		
	}
	
	function findRoomData(hashPhp) 
	{
		var resultData:Dynamic = Json.parse( Json.stringify(hashPhp));
		var page:String = "";		
		 for ( roomPage in Reflect.fields(resultData) ) 
		 {	
			page = roomPage;		
		}		
		var firebaseChild:Firebase = firebase.child(page);
		return firebaseChild;
	}
	
	function updateRoom(firebaseChild:Firebase) 
	{		
		var roomNativeData  = firebaseChild.val();
		if (roomNativeData == null)
		{
			Main.dto.error = "Não foi possivel fazer a atualização.";	
			return;
		}
		var roomModel:RoomModel =Lib.objectOfAssociativeArray(roomNativeData);	
		roomModel.connections = 2;
		roomModel.open = false;
		var updateResult = firebaseChild.update(Json.stringify(roomModel));
		Main.dto.result = Json.stringify( updateResult);
	}
	
	function findRoomPage() 
	{
		var dist:String = Main.dist;	
		firebase = new Firebase(dist);
		var hashPhp:Dynamic = firebase.ordering("orderBy=\"open\"&startAt=true&limitToFirst=1");
		return hashPhp;
	}
	
}