package model.bo;
import model.vo.PersonVO;

/**
 * ...
 * @author Espigah
 * @:nativeGen
 */
@:nativeGen
class NaturalSelectionBO
{

	public function new() 
	{
		
	}
	
	public function getStrongest(_personVOList:Array<PersonVO>):PersonVO
	{
		var personVO:PersonVO=null;
		var length:Int = _personVOList.length;
		for (i in 0...length) 
		{			
			var tmpPerson = _personVOList[i];
			if (personVO == null)
			{
				personVO = tmpPerson;
			}
			else if (tmpPerson.power > personVO.power)
			{
				personVO = tmpPerson;
			}
		}
			
		
		return personVO;
	}
}