package model.bo;
import haxe.root.*;

@SuppressWarnings(value={"rawtypes", "unchecked"})
public  class NaturalSelectionBO extends haxe.lang.HxObject
{
	public    NaturalSelectionBO(haxe.lang.EmptyObject empty)
	{
		{
		}
		
	}
	
	
	public    NaturalSelectionBO()
	{
		model.bo.NaturalSelectionBO.__hx_ctor_model_bo_NaturalSelectionBO(this);
	}
	
	
	public static   void __hx_ctor_model_bo_NaturalSelectionBO(model.bo.NaturalSelectionBO __temp_me38)
	{
		{
		}
		
	}
	
	
	public static   java.lang.Object __hx_createEmpty()
	{
		return new model.bo.NaturalSelectionBO(((haxe.lang.EmptyObject) (haxe.lang.EmptyObject.EMPTY) ));
	}
	
	
	public static   java.lang.Object __hx_create(haxe.root.Array arr)
	{
		return new model.bo.NaturalSelectionBO();
	}
	
	
	public   model.vo.PersonVO getStrongest(haxe.root.Array<model.vo.PersonVO> _personVOList)
	{
		model.vo.PersonVO personVO = null;
		int length = _personVOList.length;
		{
			int _g = 0;
			while (( _g < length ))
			{
				int i = _g++;
				model.vo.PersonVO tmpPerson = _personVOList.__get(i);
				if (( personVO == null )) 
				{
					personVO = tmpPerson;
				}
				 else 
				{
					if (( tmpPerson.get_power() > personVO.get_power() )) 
					{
						personVO = tmpPerson;
					}
					
				}
				
			}
			
		}
		
		return personVO;
	}
	
	
	@Override public   java.lang.Object __hx_getField(java.lang.String field, boolean throwErrors, boolean isCheck, boolean handleProperties)
	{
		{
			boolean __temp_executeDef241 = true;
			switch (field.hashCode())
			{
				case -27105063:
				{
					if (field.equals("getStrongest")) 
					{
						__temp_executeDef241 = false;
						return ((haxe.lang.Function) (new haxe.lang.Closure(((java.lang.Object) (this) ), haxe.lang.Runtime.toString("getStrongest"))) );
					}
					
					break;
				}
				
				
			}
			
			if (__temp_executeDef241) 
			{
				return super.__hx_getField(field, throwErrors, isCheck, handleProperties);
			}
			 else 
			{
				throw null;
			}
			
		}
		
	}
	
	
	@Override public   java.lang.Object __hx_invokeField(java.lang.String field, haxe.root.Array dynargs)
	{
		{
			boolean __temp_executeDef242 = true;
			switch (field.hashCode())
			{
				case -27105063:
				{
					if (field.equals("getStrongest")) 
					{
						__temp_executeDef242 = false;
						return this.getStrongest(((haxe.root.Array<model.vo.PersonVO>) (dynargs.__get(0)) ));
					}
					
					break;
				}
				
				
			}
			
			if (__temp_executeDef242) 
			{
				return super.__hx_invokeField(field, dynargs);
			}
			 else 
			{
				throw null;
			}
			
		}
		
	}
	
	
}


