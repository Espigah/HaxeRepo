package src.app.chat.service.request;


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
		var data:ServiceData = new ServiceData();
		data.method = CONSTANTS.ENTER;
		data.special = "1";
		data.page =  model.login;		
		data.path =  CONSTANTS.USER;		
		data.data = '{ "name":"' + model.login + '", "pass":"' + model.pass + '" }';
		setData(data);
		load();
	}
	
	public function enter(model:FormModel) 
	{
		var data:ServiceData = new ServiceData();
		data.special = "1";
		data.method = CONSTANTS.GET;
		data.page = model.login;
		data.data = { name:model.login, pass:model.pass }; 
		setData(data);
		load();
	}
	
}