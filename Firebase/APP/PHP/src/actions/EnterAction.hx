package actions;
import haxe.Json;
import model.ModelData.FormModelData;


/**
 * ...
 * @author @Espigah-RAXE
 */
class EnterAction
{

	public function new(dto:DataTransferObject) 
	{
		var firebase:Firebase =  new Firebase(Main.dist);
		var json:String = firebase.val();
		if (json == null || json == "" )
		{
			dto.error = "Usuario não cadastrado.";	
			return;
		}
		var user:FormModelData = Json.parse(Main.data);
		dto.message = "";
		var userOrigen:FormModelData = Json.parse(json);
		if (userOrigen.login == user.login)
		{
			dto.message = "OK";
		}
		dto.result = json;
	}
	
}