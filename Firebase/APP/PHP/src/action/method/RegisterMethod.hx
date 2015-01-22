package action.method ;
import model.Model.FormModel;
/**
 * ...
 * @author @Espigah-RAXE
 */
class RegisterMethod
{

	public function new(model:FormModel) 
	{
		var firebase:Firebase =  new Firebase(Main.dist);
		if (firebase.val() != null)
		{
			Main.dto.error = "Usuario ja cadastrado.";			
		}	
		var r = firebase.set(Main.data);
		Main.dto.message = r;
	}
	
}