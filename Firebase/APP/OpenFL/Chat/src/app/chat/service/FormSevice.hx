package src.app.chat.service;
import app.chat.model.FormModel;
import app.chat.model.Model;
import app.chat.service.ServiceAction;
import src.app.chat.service.request.FormRequest;

/**
 * ...
 * @author espigah
 */
class FormSevice extends ServiceAction
{

	public function new() 
	{
		super();
	}
	
	public function enter(model:FormModel):ServiceRequest
	{
		var formRequest:FormRequest = new FormRequest();
		formRequest.enter(model);
		return formRequest;
	}
	
	public function register(model:FormModel):ServiceRequest
	{
		var formRequest:FormRequest = new FormRequest();
		formRequest.register(model);
		return formRequest;
	}
	
	override public function execute(model:Model):ServiceRequest
	{
		var modelTyped:FormModel = cast(model, FormModel);
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