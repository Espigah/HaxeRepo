package action;
import action.method.FormEnterMethod;
import action.method.FormRegisterMethod;
import model.Model.FormModel;

/**
 * ...
 * @author 
 */
class FormAction implements IFormAction
{

	public function new() 
	{
		
	}
	
	/* INTERFACE action.IFormAction */
	
	public function enter(model:FormModel):Dynamic 
	{
		new FormEnterMethod(model);
		return null;
	}
	
	public function register(model:FormModel):Dynamic 
	{
		new FormRegisterMethod(model);
		return null;
	}
	
}