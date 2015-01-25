package app.chat.service.request;
import app.chat.utils.Vector2D;
import haxe.crypto.Sha256;
import model.Model.GridModel;
import model.Model.RoomModel;
import service.ServiceData;
import src.app.chat.service.core.ServiceRequest;

/**
 * ...
 * @author espigah
 */
class RoomRequest extends ServiceRequest
{

	public function new() 
	{
		super();
	}
	
	
	public function create(roomModel:RoomModel, action:String = "", method:String = ""):Void
	{
		roomModel.open = true;
		roomModel.key = Sha256.encode(Date.now().getTime() + "");
		roomModel.maxConnections = 2;
		roomModel.data = Vector2D.map;
		roomModel.connections = 1;
		
		var data:ServiceData = new ServiceData(roomModel,action, method);	
		data.page =  roomModel.id;		
		data.path =  CONSTANTS.ROOM_PATH;		
		setData(data);
		load();
	}
	
	public function connect(roomModel:RoomModel, action:String = "", method:String = ""):Void
	{		
		var data:ServiceData = new ServiceData(roomModel, action, method);
		enbalePopup = false;
		data.path =  CONSTANTS.ROOM_PATH;		
		setData(data);
		load();
	}
	
	public function update(roomModel:RoomModel, gridModel:GridModel, action:String = "", method:String = ""):Void
	{
		var data:ServiceData = new ServiceData(gridModel,action, method);	
		data.page =  roomModel.id+"/data";		
		data.path =  CONSTANTS.ROOM_PATH;		
		setData(data);
		load();
	}
	
	//deprecated
	public function refresh(roomModel:RoomModel,  action:String = "", method:String = ""):Void
	{
		//var data:ServiceData = new ServiceData(roomModel, action, method);
		//data.page = roomModel.id;
		//data.path =  CONSTANTS.ROOM_PATH;
		//setData(data);
		//load();
	}
}