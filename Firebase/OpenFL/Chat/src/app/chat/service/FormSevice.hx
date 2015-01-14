package src.app.chat.service;
import app.chat.model.FormModel;
import src.app.chat.service.request.FormRequest;

/**
 * ...
 * @author espigah
 */
class FormSevice
{

	public function new() 
	{
		
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
	
	public function action(model:FormModel):ServiceRequest
	{
		if (model.isRegister == true)
		{
			return register(model);
		}
		else
		{
			return enter(model);
		}
	}
	
}