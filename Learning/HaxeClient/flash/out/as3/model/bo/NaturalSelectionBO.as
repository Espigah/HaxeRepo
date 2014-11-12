package model.bo {
	import model.vo.PersonVO;
	public class NaturalSelectionBO {
		public function NaturalSelectionBO() : void {
		}
		
		public function getStrongest(_personVOList : Array) : model.vo.PersonVO {
			var personVO : model.vo.PersonVO = null;
			var length : int = _personVOList.length;
			{
				var _g : int = 0;
				while(_g < length) {
					var i : int = _g++;
					var tmpPerson : model.vo.PersonVO = _personVOList[i];
					if(personVO == null) personVO = tmpPerson;
					else if(tmpPerson.get_power() > personVO.get_power()) personVO = tmpPerson;
				}
			};
			return personVO;
		}
		
	}
}
