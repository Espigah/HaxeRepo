package action;
import model.Model.GridModel;
import model.Model.RoomModel;


/**
 * @author 
 */

interface IRoomAction 
{
	public function create(roomModel:RoomModel):Dynamic;
	
	public function connect(roomModel:RoomModel):Dynamic;
	
	public function update(roomModel:RoomModel, gridModel:GridModel):Dynamic;
	
	public function refresh(roomModel:RoomModel):Dynamic;
}