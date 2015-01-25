package action;
import action.method.RoomConnectMethod;
import action.method.RoomCreateMethod;
import action.method.RoomRefreshMethod;
import action.method.RoomUpdateMethod;
import haxe.Json;
import model.Model.GridModel;
import model.Model.RoomModel;
import php.Lib;

/**
 * ...
 * @author espigah
 */
class RoomAction implements IRoomAction
{

	public function new() 
	{
		
	}
	
	/* INTERFACE action.IRoomAction */
	
	public function create(roomModel:RoomModel):Dynamic 
	{
		new RoomCreateMethod(roomModel);		
		return null;
	}
	
	public function connect(roomModel:RoomModel):Dynamic 
	{
		new RoomConnectMethod(roomModel);		
		return null;
		
	}
	
	public function update(roomModel:RoomModel,gridModel:GridModel):Dynamic 
	{
		new RoomUpdateMethod(gridModel);	
		return null;
	}
	
	/* INTERFACE action.IRoomAction */
	
	public function refresh(roomModel:RoomModel):Dynamic 
	{
		new RoomRefreshMethod(roomModel);		
		return null;
	}
	
}