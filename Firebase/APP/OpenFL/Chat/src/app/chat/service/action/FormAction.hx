package src.app.chat.service.action ;
import action.IFormAction;
import app.utils.PersistTypes;
import haxe.rtti.CType.Typedef;
import model.Model.FormModel;
import model.Model;
import src.app.chat.service.core.ServiceAction;
import src.app.chat.service.core.ServiceAction;
import src.app.chat.service.core.ServiceRequest;

import src.app.chat.service.request.FormRequest;

/**
 * ...
 * @author espigah
 */
class FormAction extends ServiceAction implements IFormAction
{

	public function new() 
	{
		super(FormRequest);
		action = PersistTypes.getClassName();		
	}
	
	public function enter(model:FormModel):Dynamic
	{
		method = PersistTypes.getMethodName();		
		return callMethod([model]);
	}
	
	public function register(model:FormModel):Dynamic
	{
		method = PersistTypes.getMethodName();			
		return callMethod([model]);
		
	}
	
	//override public function execute(model:Dynamic):ServiceRequest
	//{
		//var modelTyped:FormModel = model;
		//if (modelTyped.isRegister == true)
		//{
			//return register(modelTyped);
		//}
		//else
		//{
			//return enter(modelTyped);
		//}
	//}
}