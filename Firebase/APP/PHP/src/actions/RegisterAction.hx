package actions;

/**
 * ...
 * @author @Espigah-RAXE
 */
class RegisterAction
{

	public function new(dto:DataTransferObject) 
	{
		var firebase:Firebase =  new Firebase(Main.dist);
		if (firebase.val() != null)
		{
			dto.error = "Usuario ja cadastrado.";			
		}	
		var r = firebase.set(Main.data);
		dto.message = r;
	}
	
}