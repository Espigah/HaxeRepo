package src.app.chat.service.action ;
import action.IRoomAction;
import action.IRoomAction;
import app.chat.service.request.RoomRequest;
import app.utils.PersistTypes;
import model.Model.GridModel;
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
		super(RoomRequest);
		action = PersistTypes.getClassName();		
	}
	
	/* INTERFACE action.IRoomAction */
	
	public function create(model:RoomModel):Dynamic 
	{
		method = PersistTypes.getMethodName();			
		return callMethod([model]);
	}
	
	public function connect(model:RoomModel):Dynamic  // tentar connectar depois criar 
	{
		method = PersistTypes.getMethodName();		
		return callMethod([model]);
	}
	
	/* INTERFACE action.IRoomAction */
	
	public function update(roomModel:RoomModel, gridModel:GridModel):Dynamic 
	{
		method = PersistTypes.getMethodName();		
		return callMethod([roomModel,gridModel]);
	}
	
	/* INTERFACE action.IRoomAction */
	
	public function refresh(roomModel:RoomModel):Dynamic 
	{
		method = PersistTypes.getMethodName();		
		return callMethod([roomModel]);
	}
	

	
}