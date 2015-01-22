package src.app.chat.service.action ;
import action.IFormAction;
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
		super();
		action = "FormAction";
	}
	
	public function enter(model:FormModel):Dynamic
	{
		method = "enter";
		
		var formRequest:FormRequest = new FormRequest();
		formRequest.enter(model);
		return formRequest;
	}
	
	public function register(model:FormModel):Dynamic
	{
		method = "register";
		setupModel(model);
		var formRequest:FormRequest = new FormRequest();
		formRequest.register(model);
		return formRequest;
	}
	
	override public function execute(model:Dynamic):ServiceRequest
	{
		var modelTyped:FormModel = model;
		if (modelTyped.isRegister == true)
		{
			return register(modelTyped);
		}
		else
		{
			return enter(modelTyped);
		}
	}
}