package test;
import haxe.root.*;

@SuppressWarnings(value={"rawtypes", "unchecked"})
public  class Test extends haxe.lang.HxObject
{
	public    Test(haxe.lang.EmptyObject empty)
	{
		{
		}
		
	}
	
	
	public    Test()
	{
		test.Test.__hx_ctor_test_Test(this);
	}
	
	
	public static   void __hx_ctor_test_Test(test.Test __temp_me42)
	{
		model.vo.PersonVO personVO = new model.bo.NaturalSelectionBO().getStrongest(new haxe.root.Array<model.vo.PersonVO>(new model.vo.PersonVO[]{new model.vo.PersonVO(haxe.lang.Runtime.toString("p1"), ((int) (5) )), new model.vo.PersonVO(haxe.lang.Runtime.toString("p2"), ((int) (9) ))}));
		haxe.Log.trace.__hx_invoke2_o(0.0, "-> NaturalSelection ->", 0.0, new haxe.lang.DynamicObject(new haxe.root.Array<java.lang.String>(new java.lang.String[]{"className", "fileName", "methodName"}), new haxe.root.Array<java.lang.Object>(new java.lang.Object[]{"test.Test", "Test.hx", "new"}), new haxe.root.Array<java.lang.String>(new java.lang.String[]{"lineNumber"}), new haxe.root.Array<java.lang.Object>(new java.lang.Object[]{((java.lang.Object) (((double) (15) )) )})));
		java.lang.Object __temp_stmt261 = null;
		{
			haxe.root.Array __temp_odecl259 = new haxe.root.Array(new java.lang.Object[]{personVO.get_name()});
			__temp_stmt261 = new haxe.lang.DynamicObject(new haxe.root.Array<java.lang.String>(new java.lang.String[]{"className", "customParams", "fileName", "methodName"}), new haxe.root.Array<java.lang.Object>(new java.lang.Object[]{"test.Test", __temp_odecl259, "Test.hx", "new"}), new haxe.root.Array<java.lang.String>(new java.lang.String[]{"lineNumber"}), new haxe.root.Array<java.lang.Object>(new java.lang.Object[]{((java.lang.Object) (((double) (16) )) )}));
		}
		
		haxe.Log.trace.__hx_invoke2_o(0.0, "Person Name:", 0.0, __temp_stmt261);
		java.lang.Object __temp_stmt262 = null;
		{
			haxe.root.Array __temp_odecl260 = new haxe.root.Array(new java.lang.Object[]{personVO.get_power()});
			__temp_stmt262 = new haxe.lang.DynamicObject(new haxe.root.Array<java.lang.String>(new java.lang.String[]{"className", "customParams", "fileName", "methodName"}), new haxe.root.Array<java.lang.Object>(new java.lang.Object[]{"test.Test", __temp_odecl260, "Test.hx", "new"}), new haxe.root.Array<java.lang.String>(new java.lang.String[]{"lineNumber"}), new haxe.root.Array<java.lang.Object>(new java.lang.Object[]{((java.lang.Object) (((double) (17) )) )}));
		}
		
		haxe.Log.trace.__hx_invoke2_o(0.0, "Person Power:", 0.0, __temp_stmt262);
		haxe.Log.trace.__hx_invoke2_o(0.0, "<- NaturalSelection <-", 0.0, new haxe.lang.DynamicObject(new haxe.root.Array<java.lang.String>(new java.lang.String[]{"className", "fileName", "methodName"}), new haxe.root.Array<java.lang.Object>(new java.lang.Object[]{"test.Test", "Test.hx", "new"}), new haxe.root.Array<java.lang.String>(new java.lang.String[]{"lineNumber"}), new haxe.root.Array<java.lang.Object>(new java.lang.Object[]{((java.lang.Object) (((double) (18) )) )})));
	}
	
	
	public static   java.lang.Object __hx_createEmpty()
	{
		return new test.Test(((haxe.lang.EmptyObject) (haxe.lang.EmptyObject.EMPTY) ));
	}
	
	
	public static   java.lang.Object __hx_create(haxe.root.Array arr)
	{
		return new test.Test();
	}
	
	
}


