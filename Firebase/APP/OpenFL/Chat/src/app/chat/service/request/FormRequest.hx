package src.app.chat.service.request;

import app.chat.model.FormModel;
import app.chat.service.ServiceData;
import app.chat.utils.Constant;
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
	
	public function register(model:FormModel) 
	{
		var data:ServiceData = new ServiceData();
		data.method = CONSTANTS.ENTER;
		data.page =  model.login;		
		data.path =  CONSTANTS.USER;		
		data.data = '{ "name":"' + model.login + '", "pass":"' + model.pass + '" }';
		setData(data);
		load();
	}
	
	public function enter(model:FormModel) 
	{
		var data:ServiceData = new ServiceData();
		data.method = CONSTANTS.GET;
		data.page = model.login;
		data.data = { name:model.login, pass:model.pass }; 
		setData(data);
		load();
	}
	
}