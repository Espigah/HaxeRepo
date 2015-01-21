package src.app.chat.service.core ;

import openfl.errors.Error;
import src.app.chat.service.action.FormAction;
import src.app.chat.service.action.RoomAction;

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
        if(I == null){
            new Service();
        } 
        return I;
    }
	
	public var form:FormAction = new FormAction();
	public var room:RoomAction = new RoomAction();
	
}