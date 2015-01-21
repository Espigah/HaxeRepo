package action.method ;

/**
 * ...
 * @author @Espigah-RAXE
 */
class RegisterMethod
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