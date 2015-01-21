package src.app.chat.service.core ;
import haxe.rtti.CType.Typedef;
import model.Model;



/**
 * ...
 * @author espigah
 */
class ServiceAction
{
	var action:String;
	var method:String;
	public function new() 
	{
		
	}
	
	public function setupModel(model:Dynamic):Void
	{
		model.action = action;
		model.method = method;
	}
	
	public function execute(model:Dynamic):ServiceRequest
	{
		return null;
	}
}