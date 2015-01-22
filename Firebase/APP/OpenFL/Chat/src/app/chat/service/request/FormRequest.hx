package src.app.chat.service.request;

import app.chat.model.FormModel;
import app.chat.service.ServiceData;
import src.app.chat.service.ServiceRequest;

/**
 * ...
 * @author espigah
 */
class FormRequest extends ServiceRequest
{

	public function new() 
	{
		super(CONSTANTS.PROXY);
		
	}
	
	public function register(model:FormModel,action:String="", method:String="") 
	{
		var data:ServiceData = new ServiceData();
		data.action = action;		
		data.method = method;
		data.type = CONSTANTS.ENTER;
		data.special = "1";
		data.page =  model.login;		
		data.path =  CONSTANTS.USER;		
		data.data = '{ "name":"' + model.login + '", "pass":"' + model.pass + '" }';
		setData(data);
		load();
	}
	
	public function enter(model:FormModel,action:String="", method:String="") 
	{
		var data:ServiceData = new ServiceData();
		data.action = action;		
		data.method = method;
		
		data.special = "1";
		data.method = CONSTANTS.GET;
		data.page = model.login;
		data.data = { name:model.login, pass:model.pass }; 
		setData(data);
		load();
	}
	
}