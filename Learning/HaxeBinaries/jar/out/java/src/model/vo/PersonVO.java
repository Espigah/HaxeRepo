package model.vo;
import haxe.root.*;

@SuppressWarnings(value={"rawtypes", "unchecked"})
public  class PersonVO extends haxe.lang.HxObject
{
	public    PersonVO(haxe.lang.EmptyObject empty)
	{
		{
		}
		
	}
	
	
	public    PersonVO(java.lang.String name, int power)
	{
		model.vo.PersonVO.__hx_ctor_model_vo_PersonVO(this, name, power);
	}
	
	
	public static   void __hx_ctor_model_vo_PersonVO(model.vo.PersonVO __temp_me39, java.lang.String name, int power)
	{
		__temp_me39.set_name(name);
		__temp_me39.set_power(power);
	}
	
	
	public static   java.lang.Object __hx_createEmpty()
	{
		return new model.vo.PersonVO(((haxe.lang.EmptyObject) (haxe.lang.EmptyObject.EMPTY) ));
	}
	
	
	public static   java.lang.Object __hx_create(haxe.root.Array arr)
	{
		return new model.vo.PersonVO(haxe.lang.Runtime.toString(arr.__get(0)), ((int) (haxe.lang.Runtime.toInt(arr.__get(1))) ));
	}
	
	
	public  java.lang.String name;
	
	public  int power;
	
	public   java.lang.String get_name()
	{
		return this.name;
	}
	
	
	public   java.lang.String set_name(java.lang.String value)
	{
		return this.name = value;
	}
	
	
	public   int get_power()
	{
		return this.power;
	}
	
	
	public   int set_power(int value)
	{
		return this.power = value;
	}
	
	
	@Override public   double __hx_setField_f(java.lang.String field, double value, boolean handleProperties)
	{
		{
			boolean __temp_executeDef243 = true;
			switch (field.hashCode())
			{
				case 106858757:
				{
					if (field.equals("power")) 
					{
						__temp_executeDef243 = false;
						if (handleProperties) 
						{
							this.set_power(((int) (value) ));
							return value;
						}
						 else 
						{
							this.power = ((int) (value) );
							return value;
						}
						
					}
					
					break;
				}
				
				
			}
			
			if (__temp_executeDef243) 
			{
				return super.__hx_setField_f(field, value, handleProperties);
			}
			 else 
			{
				throw null;
			}
			
		}
		
	}
	
	
	@Override public   java.lang.Object __hx_setField(java.lang.String field, java.lang.Object value, boolean handleProperties)
	{
		{
			boolean __temp_executeDef244 = true;
			switch (field.hashCode())
			{
				case 106858757:
				{
					if (field.equals("power")) 
					{
						__temp_executeDef244 = false;
						if (handleProperties) 
						{
							this.set_power(((int) (haxe.lang.Runtime.toInt(value)) ));
							return value;
						}
						 else 
						{
							this.power = ((int) (haxe.lang.Runtime.toInt(value)) );
							return value;
						}
						
					}
					
					break;
				}
				
				
				case 3373707:
				{
					if (field.equals("name")) 
					{
						__temp_executeDef244 = false;
						if (handleProperties) 
						{
							this.set_name(haxe.lang.Runtime.toString(value));
							return value;
						}
						 else 
						{
							this.name = haxe.lang.Runtime.toString(value);
							return value;
						}
						
					}
					
					break;
				}
				
				
			}
			
			if (__temp_executeDef244) 
			{
				return super.__hx_setField(field, value, handleProperties);
			}
			 else 
			{
				throw null;
			}
			
		}
		
	}
	
	
	@Override public   java.lang.Object __hx_getField(java.lang.String field, boolean throwErrors, boolean isCheck, boolean handleProperties)
	{
		{
			boolean __temp_executeDef245 = true;
			switch (field.hashCode())
			{
				case 929191656:
				{
					if (field.equals("set_power")) 
					{
						__temp_executeDef245 = false;
						return ((haxe.lang.Function) (new haxe.lang.Closure(((java.lang.Object) (this) ), haxe.lang.Runtime.toString("set_power"))) );
					}
					
					break;
				}
				
				
				case 3373707:
				{
					if (field.equals("name")) 
					{
						__temp_executeDef245 = false;
						if (handleProperties) 
						{
							return this.get_name();
						}
						 else 
						{
							return this.name;
						}
						
					}
					
					break;
				}
				
				
				case 1143808732:
				{
					if (field.equals("get_power")) 
					{
						__temp_executeDef245 = false;
						return ((haxe.lang.Function) (new haxe.lang.Closure(((java.lang.Object) (this) ), haxe.lang.Runtime.toString("get_power"))) );
					}
					
					break;
				}
				
				
				case 106858757:
				{
					if (field.equals("power")) 
					{
						__temp_executeDef245 = false;
						if (handleProperties) 
						{
							return this.get_power();
						}
						 else 
						{
							return this.power;
						}
						
					}
					
					break;
				}
				
				
				case 1415373896:
				{
					if (field.equals("set_name")) 
					{
						__temp_executeDef245 = false;
						return ((haxe.lang.Function) (new haxe.lang.Closure(((java.lang.Object) (this) ), haxe.lang.Runtime.toString("set_name"))) );
					}
					
					break;
				}
				
				
				case 1976486356:
				{
					if (field.equals("get_name")) 
					{
						__temp_executeDef245 = false;
						return ((haxe.lang.Function) (new haxe.lang.Closure(((java.lang.Object) (this) ), haxe.lang.Runtime.toString("get_name"))) );
					}
					
					break;
				}
				
				
			}
			
			if (__temp_executeDef245) 
			{
				return super.__hx_getField(field, throwErrors, isCheck, handleProperties);
			}
			 else 
			{
				throw null;
			}
			
		}
		
	}
	
	
	@Override public   double __hx_getField_f(java.lang.String field, boolean throwErrors, boolean handleProperties)
	{
		{
			boolean __temp_executeDef246 = true;
			switch (field.hashCode())
			{
				case 106858757:
				{
					if (field.equals("power")) 
					{
						__temp_executeDef246 = false;
						if (handleProperties) 
						{
							return ((double) (this.get_power()) );
						}
						 else 
						{
							return ((double) (this.power) );
						}
						
					}
					
					break;
				}
				
				
			}
			
			if (__temp_executeDef246) 
			{
				return super.__hx_getField_f(field, throwErrors, handleProperties);
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
			boolean __temp_executeDef247 = true;
			switch (field.hashCode())
			{
				case 929191656:
				{
					if (field.equals("set_power")) 
					{
						__temp_executeDef247 = false;
						return this.set_power(((int) (haxe.lang.Runtime.toInt(dynargs.__get(0))) ));
					}
					
					break;
				}
				
				
				case 1976486356:
				{
					if (field.equals("get_name")) 
					{
						__temp_executeDef247 = false;
						return this.get_name();
					}
					
					break;
				}
				
				
				case 1143808732:
				{
					if (field.equals("get_power")) 
					{
						__temp_executeDef247 = false;
						return this.get_power();
					}
					
					break;
				}
				
				
				case 1415373896:
				{
					if (field.equals("set_name")) 
					{
						__temp_executeDef247 = false;
						return this.set_name(haxe.lang.Runtime.toString(dynargs.__get(0)));
					}
					
					break;
				}
				
				
			}
			
			if (__temp_executeDef247) 
			{
				return super.__hx_invokeField(field, dynargs);
			}
			 else 
			{
				throw null;
			}
			
		}
		
	}
	
	
	@Override public   void __hx_getFields(haxe.root.Array<java.lang.String> baseArr)
	{
		baseArr.push("power");
		baseArr.push("name");
		{
			super.__hx_getFields(baseArr);
		}
		
	}
	
	
}


