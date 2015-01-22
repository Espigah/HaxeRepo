package src.app.chat.service.action ;
import action.IRoomAction;
import model.Model.RoomModel;
import src.app.chat.service.core.ServiceAction;

/**
 * ...
 * @author 
 */
class RoomAction extends ServiceAction implements IRoomAction
{

	public function new() 
	{
		super();
	}
	
	/* INTERFACE action.IRoomAction */
	
	public function create(model:RoomModel):Dynamic 
	{
		return null;
	}
	
	public function connect(model:RoomModel):Dynamic 
	{
			return null;
	}
	
}