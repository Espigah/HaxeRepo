package action.method ;
import haxe.ds.HashMap;
import haxe.Json;
import model.ModelData.FormModelData;
import php.Lib;
import php.NativeArray;

import model.Model.FormModel;
/**
 * ...
 * @author @Espigah-RAXE
 */
class EnterMethod
{

	public function new(model:FormModel) 
	{
		var firebase:Firebase =  new Firebase(Main.dist);
		var hashPhp:Dynamic = firebase.val();
		if (hashPhp == null  )
		{
			Main.dto.error = "Usuario não cadastrado.";	
			return;
		}
		var hashHaxe:Dynamic = Lib.hashOfAssociativeArray(hashPhp);	
		var user:FormModelData = Json.parse(Main.data);
		Main.dto.message = "";
		var userOrigen:FormModelData = {login:hashHaxe.get('login'), pass:hashHaxe.get('pass'), uid:hashHaxe.get('uid') };
		if (userOrigen.login == user.login)
		{
			Main.dto.message = "OK";
		}
		Main.dto.result = Json.stringify(userOrigen);
	}
	
}