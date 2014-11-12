<?php

class model_bo_NaturalSelectionBO {
	public function __construct() { 
	}
	public function getStrongest($_personVOList) {
		$personVO = null;
		$length = $_personVOList->length;
		{
			$_g = 0;
			while($_g < $length) {
				$i = $_g++;
				$tmpPerson = $_personVOList[$i];
				if($personVO === null) {
					$personVO = $tmpPerson;
				} else {
					if($tmpPerson->get_power() > $personVO->get_power()) {
						$personVO = $tmpPerson;
					}
				}
				unset($tmpPerson,$i);
			}
		}
		return $personVO;
	}
	function __toString() { return 'model.bo.NaturalSelectionBO'; }
}
