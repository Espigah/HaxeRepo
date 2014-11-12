
#pragma warning disable 109, 114, 219, 429, 168, 162
namespace test{
	public  class Test : global::haxe.lang.HxObject {
		public    Test(global::haxe.lang.EmptyObject empty){
			unchecked {
				#line 9 "E:\\Data\\HAXE\\Learning\\_src\\test\\Test.hx"
				{
				}
				
			}
			#line default
		}
		
		
		public    Test(){
			unchecked {
				#line 12 "E:\\Data\\HAXE\\Learning\\_src\\test\\Test.hx"
				global::test.Test.__hx_ctor_test_Test(this);
			}
			#line default
		}
		
		
		public static   void __hx_ctor_test_Test(global::test.Test __temp_me23){
			unchecked {
				#line 14 "E:\\Data\\HAXE\\Learning\\_src\\test\\Test.hx"
				global::model.vo.PersonVO personVO = new global::model.bo.NaturalSelectionBO().getStrongest(new global::Array<object>(new object[]{new global::model.vo.PersonVO(((string) ("p1") ), ((int) (5) )), new global::model.vo.PersonVO(((string) ("p2") ), ((int) (9) ))}));
				global::haxe.Log.trace.__hx_invoke2_o(default(double), "-> NaturalSelection ->", default(double), new global::haxe.lang.DynamicObject(new global::Array<int>(new int[]{302979532, 1547539107, 1648581351}), new global::Array<object>(new object[]{"new", "test.Test", "Test.hx"}), new global::Array<int>(new int[]{1981972957}), new global::Array<double>(new double[]{((double) (15) )})));
				object __temp_stmt30 = default(object);
				#line 16 "E:\\Data\\HAXE\\Learning\\_src\\test\\Test.hx"
				{
					#line 16 "E:\\Data\\HAXE\\Learning\\_src\\test\\Test.hx"
					global::Array __temp_odecl28 = new global::Array<object>(new object[]{personVO.get_name()});
					#line 16 "E:\\Data\\HAXE\\Learning\\_src\\test\\Test.hx"
					__temp_stmt30 = new global::haxe.lang.DynamicObject(new global::Array<int>(new int[]{302979532, 1547539107, 1648581351, 1830310359}), new global::Array<object>(new object[]{"new", "test.Test", "Test.hx", __temp_odecl28}), new global::Array<int>(new int[]{1981972957}), new global::Array<double>(new double[]{((double) (16) )}));
				}
				
				#line 16 "E:\\Data\\HAXE\\Learning\\_src\\test\\Test.hx"
				global::haxe.Log.trace.__hx_invoke2_o(default(double), "Person Name:", default(double), __temp_stmt30);
				object __temp_stmt31 = default(object);
				#line 17 "E:\\Data\\HAXE\\Learning\\_src\\test\\Test.hx"
				{
					#line 17 "E:\\Data\\HAXE\\Learning\\_src\\test\\Test.hx"
					global::Array __temp_odecl29 = new global::Array<object>(new object[]{personVO.get_power()});
					#line 17 "E:\\Data\\HAXE\\Learning\\_src\\test\\Test.hx"
					__temp_stmt31 = new global::haxe.lang.DynamicObject(new global::Array<int>(new int[]{302979532, 1547539107, 1648581351, 1830310359}), new global::Array<object>(new object[]{"new", "test.Test", "Test.hx", __temp_odecl29}), new global::Array<int>(new int[]{1981972957}), new global::Array<double>(new double[]{((double) (17) )}));
				}
				
				#line 17 "E:\\Data\\HAXE\\Learning\\_src\\test\\Test.hx"
				global::haxe.Log.trace.__hx_invoke2_o(default(double), "Person Power:", default(double), __temp_stmt31);
				global::haxe.Log.trace.__hx_invoke2_o(default(double), "<- NaturalSelection <-", default(double), new global::haxe.lang.DynamicObject(new global::Array<int>(new int[]{302979532, 1547539107, 1648581351}), new global::Array<object>(new object[]{"new", "test.Test", "Test.hx"}), new global::Array<int>(new int[]{1981972957}), new global::Array<double>(new double[]{((double) (18) )})));
			}
			#line default
		}
		
		
		public static  new object __hx_createEmpty(){
			unchecked {
				#line 9 "E:\\Data\\HAXE\\Learning\\_src\\test\\Test.hx"
				return new global::test.Test(((global::haxe.lang.EmptyObject) (global::haxe.lang.EmptyObject.EMPTY) ));
			}
			#line default
		}
		
		
		public static  new object __hx_create(global::Array arr){
			unchecked {
				#line 9 "E:\\Data\\HAXE\\Learning\\_src\\test\\Test.hx"
				return new global::test.Test();
			}
			#line default
		}
		
		
	}
}


