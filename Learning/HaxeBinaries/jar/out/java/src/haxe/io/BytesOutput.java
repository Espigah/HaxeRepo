package haxe.io;
import haxe.root.*;

@SuppressWarnings(value={"rawtypes", "unchecked"})
public  class BytesOutput extends haxe.io.Output
{
	public    BytesOutput(haxe.lang.EmptyObject empty)
	{
		super(haxe.lang.EmptyObject.EMPTY);
	}
	
	
	public    BytesOutput()
	{
		haxe.io.BytesOutput.__hx_ctor_haxe_io_BytesOutput(this);
	}
	
	
	public static   void __hx_ctor_haxe_io_BytesOutput(haxe.io.BytesOutput __temp_me26)
	{
		__temp_me26.b = new haxe.io.BytesBuffer();
	}
	
	
	public static   java.lang.Object __hx_createEmpty()
	{
		return new haxe.io.BytesOutput(((haxe.lang.EmptyObject) (haxe.lang.EmptyObject.EMPTY) ));
	}
	
	
	public static   java.lang.Object __hx_create(haxe.root.Array arr)
	{
		return new haxe.io.BytesOutput();
	}
	
	
	public  haxe.io.BytesBuffer b;
	
	
	
	public final   int get_length()
	{
		return this.b.b.size();
	}
	
	
	@Override public   void writeByte(int c)
	{
		this.b.b.write(((int) (c) ));
	}
	
	
	@Override public   int writeBytes(haxe.io.Bytes buf, int pos, int len)
	{
		{
			if (( ( ( pos < 0 ) || ( len < 0 ) ) || ( ( pos + len ) > buf.length ) )) 
			{
				throw haxe.lang.HaxeException.wrap(haxe.io.Error.OutsideBounds);
			}
			
			this.b.b.write(((byte[]) (buf.b) ), ((int) (pos) ), ((int) (len) ));
		}
		
		return len;
	}
	
	
	public   haxe.io.Bytes getBytes()
	{
		return this.b.getBytes();
	}
	
	
	@Override public   java.lang.Object __hx_setField(java.lang.String field, java.lang.Object value, boolean handleProperties)
	{
		{
			boolean __temp_executeDef217 = true;
			switch (field.hashCode())
			{
				case 98:
				{
					if (field.equals("b")) 
					{
						__temp_executeDef217 = false;
						this.b = ((haxe.io.BytesBuffer) (value) );
						return value;
					}
					
					break;
				}
				
				
			}
			
			if (__temp_executeDef217) 
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
			boolean __temp_executeDef218 = true;
			switch (field.hashCode())
			{
				case 1950049973:
				{
					if (field.equals("getBytes")) 
					{
						__temp_executeDef218 = false;
						return ((haxe.lang.Function) (new haxe.lang.Closure(((java.lang.Object) (this) ), haxe.lang.Runtime.toString("getBytes"))) );
					}
					
					break;
				}
				
				
				case 98:
				{
					if (field.equals("b")) 
					{
						__temp_executeDef218 = false;
						return this.b;
					}
					
					break;
				}
				
				
				case -662729780:
				{
					if (field.equals("writeBytes")) 
					{
						__temp_executeDef218 = false;
						return ((haxe.lang.Function) (new haxe.lang.Closure(((java.lang.Object) (this) ), haxe.lang.Runtime.toString("writeBytes"))) );
					}
					
					break;
				}
				
				
				case -1106363674:
				{
					if (field.equals("length")) 
					{
						__temp_executeDef218 = false;
						return this.get_length();
					}
					
					break;
				}
				
				
				case -1406851705:
				{
					if (field.equals("writeByte")) 
					{
						__temp_executeDef218 = false;
						return ((haxe.lang.Function) (new haxe.lang.Closure(((java.lang.Object) (this) ), haxe.lang.Runtime.toString("writeByte"))) );
					}
					
					break;
				}
				
				
				case 974314479:
				{
					if (field.equals("get_length")) 
					{
						__temp_executeDef218 = false;
						return ((haxe.lang.Function) (new haxe.lang.Closure(((java.lang.Object) (this) ), haxe.lang.Runtime.toString("get_length"))) );
					}
					
					break;
				}
				
				
			}
			
			if (__temp_executeDef218) 
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
			boolean __temp_executeDef219 = true;
			switch (field.hashCode())
			{
				case -1106363674:
				{
					if (field.equals("length")) 
					{
						__temp_executeDef219 = false;
						return ((double) (this.get_length()) );
					}
					
					break;
				}
				
				
			}
			
			if (__temp_executeDef219) 
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
			int __temp_hash221 = field.hashCode();
			boolean __temp_executeDef220 = true;
			switch (__temp_hash221)
			{
				case -662729780:case -1406851705:
				{
					if (( (( ( __temp_hash221 == -662729780 ) && field.equals("writeBytes") )) || field.equals("writeByte") )) 
					{
						__temp_executeDef220 = false;
						return haxe.lang.Runtime.slowCallField(this, field, dynargs);
					}
					
					break;
				}
				
				
				case 974314479:
				{
					if (field.equals("get_length")) 
					{
						__temp_executeDef220 = false;
						return this.get_length();
					}
					
					break;
				}
				
				
				case 1950049973:
				{
					if (field.equals("getBytes")) 
					{
						__temp_executeDef220 = false;
						return this.getBytes();
					}
					
					break;
				}
				
				
			}
			
			if (__temp_executeDef220) 
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
		baseArr.push("length");
		baseArr.push("b");
		{
			super.__hx_getFields(baseArr);
		}
		
	}
	
	
}


