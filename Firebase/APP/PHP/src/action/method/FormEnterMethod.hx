package action.method ;
import haxe.ds.HashMap;
import haxe.Json;
import model.Model.UserModelData;
import php.Lib;
import php.NativeArray;

import model.Model.FormModel;
/**
 * ...
 * @author @Espigah-RAXE
 */
class FormEnterMethod
{

	public function new(model:FormModel) 
	{
		var firebase:Firebase =  new Firebase(Main.dist);
		var hashPhp:Dynamic = firebase.val();
		
		Main.dto.logger.push(Main.dist);
		Main.dto.logger.push(hashPhp);
		
		if (hashPhp == null  )
		{
			Main.dto.tag = "LOGIN";
			Main.dto.error = "Usuario não cadastrado.";	
			return;
		}
		var hashHaxe:Dynamic = Lib.hashOfAssociativeArray(hashPhp);	
		var user:UserModelData = Json.parse(Main.data);
		Main.dto.message = "";
		var userOrigen:UserModelData = {login:hashHaxe.get('login'), pass:hashHaxe.get('pass') };
		if (userOrigen.login != user.login)
		{
			Main.dto.tag = "LOGIN";
			Main.dto.error = "Usuario não confere.";	
			return;
		}
		if (userOrigen.pass != user.pass)
		{
			Main.dto.tag = "LOGIN";
			Main.dto.error = "Senha não confere.";	
			return;
		}
		Main.dto.result = Json.stringify(userOrigen);
	}
	
}