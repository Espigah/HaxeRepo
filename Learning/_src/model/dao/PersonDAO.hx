package model.dao;
import model.vo.PersonVO;

/**
 * ...
 * @author Espigah
 */
class PersonDAO
{

	public function new() 
	{
		
	}
	
	public function savePerson(_person:PersonVO):Void
	{
		trace("savePerson->",_person.name);
	}
}