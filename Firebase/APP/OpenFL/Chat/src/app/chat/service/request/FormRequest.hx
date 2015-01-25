package src.app.chat.service.request;

import haxe.Json;
import model.Model.FormModel;
import service.ServiceData;
import src.app.chat.service.core.ServiceRequest;


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
		var data:ServiceData = new ServiceData(model,action, method);		
		data.page =  model.login;		
		data.path =  CONSTANTS.USER;		
		setData(data);
		load();
	}
	
	public function enter(model:FormModel,action:String="", method:String="") 
	{
		var data:ServiceData  = new ServiceData(model,action, method);		
		data.page = model.login;	
		data.path =  CONSTANTS.USER;	
		setData(data);
		load();
	}
	
}