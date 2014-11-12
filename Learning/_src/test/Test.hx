package test;
import model.bo.NaturalSelectionBO;
import model.vo.PersonVO;

/**
 * ...
 * @author Espigah
 */
class Test
{

	public function new() 
	{
		var personVO:PersonVO = new NaturalSelectionBO().getStrongest([new PersonVO("p1", 5), new PersonVO("p2", 9)]);
		trace("-> NaturalSelection ->");
		trace("Person Name:", personVO.name);
		trace("Person Power:", personVO.power);
		trace("<- NaturalSelection <-");
	}
	
}