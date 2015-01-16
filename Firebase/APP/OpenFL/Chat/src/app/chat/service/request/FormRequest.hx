package src.app.chat.service.request;

import model.FormModel;
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
		data.isSpecial();
		data.method = CONSTANTS.REGISTER;
		data.page =  model.data.login;		
		data.path =  CONSTANTS.USER;		
		data.data = model.getJSON();
		setData(data);
		load();
	}
	
	public function enter(model:FormModel) 
	{
		var data:ServiceData = new ServiceData();
		data.isSpecial();
		data.method = CONSTANTS.ENTER;
		data.page = model.data.login;
		data.path =  CONSTANTS.USER;		
		data.data = model.getJSON();
		setData(data);
		load();
	}	
}