package action.method ;
import haxe.Json;
import model.Model.FormModel;
import model.Model.UserModelData;
/**
 * ...
 * @author @Espigah-RAXE
 */
class FormRegisterMethod
{

	public function new(model:FormModel) 
	{
		var firebase:Firebase =  new Firebase(Main.dist);
		if (firebase.val() != null)
		{
			Main.dto.error = "Usuario ja cadastrado.";			
		}	
		
		var userModel:UserModelData = Json.parse(Main.data);
		var r = firebase.set(Json.stringify(userModel));
		//var r = firebase.set(Main.data);
		Main.dto.message = r;
	}
	
}