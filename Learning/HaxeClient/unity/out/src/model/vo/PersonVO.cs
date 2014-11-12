
#pragma warning disable 109, 114, 219, 429, 168, 162
namespace model.vo{
	public  class PersonVO : global::haxe.lang.HxObject {
		public    PersonVO(global::haxe.lang.EmptyObject empty){
			unchecked {
				#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
				{
				}
				
			}
			#line default
		}
		
		
		public    PersonVO(string name, int power){
			unchecked {
				#line 11 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
				global::model.vo.PersonVO.__hx_ctor_model_vo_PersonVO(this, name, power);
			}
			#line default
		}
		
		
		public static   void __hx_ctor_model_vo_PersonVO(global::model.vo.PersonVO __temp_me22, string name, int power){
			unchecked {
				#line 13 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
				__temp_me22.set_name(name);
				__temp_me22.set_power(power);
			}
			#line default
		}
		
		
		public static  new object __hx_createEmpty(){
			unchecked {
				#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
				return new global::model.vo.PersonVO(((global::haxe.lang.EmptyObject) (global::haxe.lang.EmptyObject.EMPTY) ));
			}
			#line default
		}
		
		
		public static  new object __hx_create(global::Array arr){
			unchecked {
				#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
				return new global::model.vo.PersonVO(global::haxe.lang.Runtime.toString(arr[0]), ((int) (global::haxe.lang.Runtime.toInt(arr[1])) ));
			}
			#line default
		}
		
		
		public  string name;
		
		public  int power;
		
		public virtual   string get_name(){
			unchecked {
				#line 19 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
				return this.name;
			}
			#line default
		}
		
		
		public virtual   string set_name(string @value){
			unchecked {
				#line 24 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
				return this.name = @value;
			}
			#line default
		}
		
		
		public virtual   int get_power(){
			unchecked {
				#line 29 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
				return this.power;
			}
			#line default
		}
		
		
		public virtual   int set_power(int @value){
			unchecked {
				#line 34 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
				return this.power = @value;
			}
			#line default
		}
		
		
		public override   double __hx_setField_f(string field, int hash, double @value, bool handleProperties){
			unchecked {
				#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
				switch (hash){
					case 1184517125:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						if (handleProperties) {
							#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
							this.set_power(((int) (@value) ));
							#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
							return @value;
						}
						 else {
							#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
							this.power = ((int) (@value) );
							#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
							return @value;
						}
						
					}
					
					
					default:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						return base.__hx_setField_f(field, hash, @value, handleProperties);
					}
					
				}
				
			}
			#line default
		}
		
		
		public override   object __hx_setField(string field, int hash, object @value, bool handleProperties){
			unchecked {
				#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
				switch (hash){
					case 1184517125:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						if (handleProperties) {
							#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
							this.set_power(((int) (global::haxe.lang.Runtime.toInt(@value)) ));
							#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
							return @value;
						}
						 else {
							#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
							this.power = ((int) (global::haxe.lang.Runtime.toInt(@value)) );
							#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
							return @value;
						}
						
					}
					
					
					case 1224700491:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						if (handleProperties) {
							#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
							this.set_name(global::haxe.lang.Runtime.toString(@value));
							#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
							return @value;
						}
						 else {
							#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
							this.name = global::haxe.lang.Runtime.toString(@value);
							#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
							return @value;
						}
						
					}
					
					
					default:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						return base.__hx_setField(field, hash, @value, handleProperties);
					}
					
				}
				
			}
			#line default
		}
		
		
		public override   object __hx_getField(string field, int hash, bool throwErrors, bool isCheck, bool handleProperties){
			unchecked {
				#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
				switch (hash){
					case 1838453864:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						return ((global::haxe.lang.Function) (new global::haxe.lang.Closure(((object) (this) ), ((string) ("set_power") ), ((int) (1838453864) ))) );
					}
					
					
					case 172206172:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						return ((global::haxe.lang.Function) (new global::haxe.lang.Closure(((object) (this) ), ((string) ("get_power") ), ((int) (172206172) ))) );
					}
					
					
					case 1998030664:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						return ((global::haxe.lang.Function) (new global::haxe.lang.Closure(((object) (this) ), ((string) ("set_name") ), ((int) (1998030664) ))) );
					}
					
					
					case 1220160980:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						return ((global::haxe.lang.Function) (new global::haxe.lang.Closure(((object) (this) ), ((string) ("get_name") ), ((int) (1220160980) ))) );
					}
					
					
					case 1184517125:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						if (handleProperties) {
							#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
							return this.get_power();
						}
						 else {
							#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
							return this.power;
						}
						
					}
					
					
					case 1224700491:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						if (handleProperties) {
							#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
							return this.get_name();
						}
						 else {
							#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
							return this.name;
						}
						
					}
					
					
					default:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						return base.__hx_getField(field, hash, throwErrors, isCheck, handleProperties);
					}
					
				}
				
			}
			#line default
		}
		
		
		public override   double __hx_getField_f(string field, int hash, bool throwErrors, bool handleProperties){
			unchecked {
				#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
				switch (hash){
					case 1184517125:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						if (handleProperties) {
							#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
							return ((double) (this.get_power()) );
						}
						 else {
							#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
							return ((double) (this.power) );
						}
						
					}
					
					
					default:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						return base.__hx_getField_f(field, hash, throwErrors, handleProperties);
					}
					
				}
				
			}
			#line default
		}
		
		
		public override   object __hx_invokeField(string field, int hash, global::Array dynargs){
			unchecked {
				#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
				switch (hash){
					case 1838453864:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						return this.set_power(((int) (global::haxe.lang.Runtime.toInt(dynargs[0])) ));
					}
					
					
					case 172206172:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						return this.get_power();
					}
					
					
					case 1998030664:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						return this.set_name(global::haxe.lang.Runtime.toString(dynargs[0]));
					}
					
					
					case 1220160980:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						return this.get_name();
					}
					
					
					default:
					{
						#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
						return base.__hx_invokeField(field, hash, dynargs);
					}
					
				}
				
			}
			#line default
		}
		
		
		public override   void __hx_getFields(global::Array<object> baseArr){
			unchecked {
				#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
				baseArr.push("power");
				#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
				baseArr.push("name");
				#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
				{
					#line 7 "E:\\Data\\HAXE\\Learning\\_src\\model\\vo\\PersonVO.hx"
					base.__hx_getFields(baseArr);
				}
				
			}
			#line default
		}
		
		
	}
}


