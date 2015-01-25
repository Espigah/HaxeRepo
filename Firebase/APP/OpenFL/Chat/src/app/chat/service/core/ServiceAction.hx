package src.app.chat.service.core ;
import app.utils.PersistTypes;
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
	var requestClassT:Dynamic;
	public function new(requestClassT:Dynamic) 
	{
		this.requestClassT = requestClassT;	
	}

	
	public function execute(model:Dynamic):ServiceRequest
	{
		return null;
	}
	
	public function callMethod(args:Array<Dynamic>):Dynamic
	{
		args.push(action);
		args.push(method);
		var classT = Type.createInstance(requestClassT, []);
		Reflect.callMethod(classT, Reflect.field(classT, method), args);
		return classT;
	}
}