package src.app.chat.service;
import openfl.errors.Error;


/**
 * ...
 * @author espigah
 */
class Service
{
	static var  I:Service;
	public function new() 
	{
		 if (I != null)
		{
			throw new Error("Singleton can only be accessed through Singleton.instance");
		}
		I = this;
	}
	
	public static function getInstance():Service{
        if(I != null){
            new Service();
        } 
        return I;
    }
	
	public var form:FormSevice = new FormSevice();
	
}