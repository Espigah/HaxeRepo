package src.app.chat.service.request;


import haxe.Json;
import model.Model.FormModel;
import src.app.chat.service.core.ServiceData;
import src.app.chat.service.core.ServiceRequest;



/**
 * ...
 * @author espigah
 */
class FormRequest extends ServiceRequest
{

	public function new() 
	{
		super();
		
	}
	
	public function register(model:FormModel) 
	{
		//trace(Json.stringify(model));
		var data:ServiceData = new ServiceData();
		data.method = CONSTANTS.REGISTER;
		data.special = "1";
		data.page =  model.login;		
		data.path =  CONSTANTS.USER;		
		data.data = Json.stringify(model);
		setData(data);
		load();
	}
	
	public function enter(model:FormModel) 
	{
		var data:ServiceData = new ServiceData();
		data.special = "1";
		data.method = CONSTANTS.GET;
		data.page = model.login;
		data.data = Json.stringify(model);
		setData(data);
		load();
	}
	
}