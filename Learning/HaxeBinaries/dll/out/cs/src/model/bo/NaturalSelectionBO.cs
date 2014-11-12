
#pragma warning disable 109, 114, 219, 429, 168, 162
namespace model.bo{
	public  class NaturalSelectionBO : global::haxe.lang.HxObject {
		public    NaturalSelectionBO(global::haxe.lang.EmptyObject empty){
			unchecked {
				#line 8 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
				{
				}
				
			}
			#line default
		}
		
		
		public    NaturalSelectionBO(){
			unchecked {
				#line 11 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
				global::model.bo.NaturalSelectionBO.__hx_ctor_model_bo_NaturalSelectionBO(this);
			}
			#line default
		}
		
		
		public static   void __hx_ctor_model_bo_NaturalSelectionBO(global::model.bo.NaturalSelectionBO __temp_me21){
			unchecked {
				#line 12 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
				{
				}
				
			}
			#line default
		}
		
		
		public static  new object __hx_createEmpty(){
			unchecked {
				#line 8 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
				return new global::model.bo.NaturalSelectionBO(((global::haxe.lang.EmptyObject) (global::haxe.lang.EmptyObject.EMPTY) ));
			}
			#line default
		}
		
		
		public static  new object __hx_create(global::Array arr){
			unchecked {
				#line 8 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
				return new global::model.bo.NaturalSelectionBO();
			}
			#line default
		}
		
		
		public virtual   global::model.vo.PersonVO getStrongest(global::Array<object> _personVOList){
			unchecked {
				#line 18 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
				global::model.vo.PersonVO personVO = default(global::model.vo.PersonVO);
				int length = _personVOList.length;
				{
					#line 20 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
					int _g = 0;
					#line 20 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
					while (( _g < length )){
						#line 20 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
						int i = _g++;
						#line 22 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
						global::model.vo.PersonVO tmpPerson = ((global::model.vo.PersonVO) (_personVOList[i]) );
						if (( personVO == default(global::model.vo.PersonVO) )) {
							#line 25 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
							personVO = tmpPerson;
						}
						 else {
							#line 27 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
							if (( tmpPerson.get_power() > personVO.get_power() )) {
								#line 29 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
								personVO = tmpPerson;
							}
							
						}
						
					}
					
				}
				
				#line 34 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
				return personVO;
			}
			#line default
		}
		
		
		public override   object __hx_getField(string field, int hash, bool throwErrors, bool isCheck, bool handleProperties){
			unchecked {
				#line 8 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
				switch (hash){
					case 1028013785:
					{
						#line 8 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
						return ((global::haxe.lang.Function) (new global::haxe.lang.Closure(((object) (this) ), ((string) ("getStrongest") ), ((int) (1028013785) ))) );
					}
					
					
					default:
					{
						#line 8 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
						return base.__hx_getField(field, hash, throwErrors, isCheck, handleProperties);
					}
					
				}
				
			}
			#line default
		}
		
		
		public override   object __hx_invokeField(string field, int hash, global::Array dynargs){
			unchecked {
				#line 8 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
				switch (hash){
					case 1028013785:
					{
						#line 8 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
						return this.getStrongest(((global::Array<object>) (global::Array<object>.__hx_cast<object>(((global::Array) (dynargs[0]) ))) ));
					}
					
					
					default:
					{
						#line 8 "E:\\Data\\HAXE\\HaxeBinaries\\_src\\model\\bo\\NaturalSelectionBO.hx"
						return base.__hx_invokeField(field, hash, dynargs);
					}
					
				}
				
			}
			#line default
		}
		
		
	}
}


