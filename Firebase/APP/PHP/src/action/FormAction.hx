package action;
import action.method.EnterMethod;
import action.method.RegisterMethod;
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
		new EnterMethod(dto);
		return null;
	}
	
	public function register(model:FormModel):Dynamic 
	{
		new RegisterMethod(dto);
		return null;
	}
	
}