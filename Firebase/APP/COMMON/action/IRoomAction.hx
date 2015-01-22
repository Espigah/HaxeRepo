package action;
import model.Model.RoomModel;


/**
 * @author 
 */

interface IRoomAction 
{
	public function create(model:RoomModel):Dynamic;
	
	public function connect(model:RoomModel):Dynamic;
}