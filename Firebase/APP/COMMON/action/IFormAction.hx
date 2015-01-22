package action ;
import model.Model.FormModel;

/**
 * @author 
 */

interface IFormAction 
{
	public function enter(model:FormModel):Dynamic;
	
	public function register(model:FormModel):Dynamic;	
}