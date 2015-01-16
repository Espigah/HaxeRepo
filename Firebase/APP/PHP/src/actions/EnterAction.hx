package actions;
import haxe.ds.HashMap;
import haxe.Json;
import model.ModelData.FormModelData;
import php.Lib;
import php.NativeArray;


/**
 * ...
 * @author @Espigah-RAXE
 */
class EnterAction
{

	public function new(dto:DataTransferObject) 
	{
		var firebase:Firebase =  new Firebase(Main.dist);
		var hashPhp:Dynamic = firebase.val();
		if (hashPhp == null  )
		{
			dto.error = "Usuario não cadastrado.";	
			return;
		}
		var hashHaxe:Dynamic = Lib.hashOfAssociativeArray(hashPhp);	
		var user:FormModelData = Json.parse(Main.data);
		dto.message = "";
		var userOrigen:FormModelData = {login:hashHaxe.get('login'), pass:, uid:, };
		if (userOrigen.login == user.login)
		{
			dto.message = "OK";
		}
		dto.result = Json.stringify(userOrigen);
	}
	
}