
#pragma warning disable 109, 114, 219, 429, 168, 162
namespace haxe.lang{
	public  class FieldLookup : global::haxe.lang.HxObject {
		public    FieldLookup(global::haxe.lang.EmptyObject empty){
			unchecked {
				#line 25 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				{
				}
				
			}
			#line default
		}
		
		
		public    FieldLookup(){
			unchecked {
				#line 25 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				global::haxe.lang.FieldLookup.__hx_ctor_haxe_lang_FieldLookup(this);
			}
			#line default
		}
		
		
		public static   void __hx_ctor_haxe_lang_FieldLookup(global::haxe.lang.FieldLookup __temp_me13){
			unchecked {
				#line 25 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				{
				}
				
			}
			#line default
		}
		
		
		public static  global::Array<int> fieldIds = new global::Array<int>(new int[]{98, 105, 4745537, 4849249, 5393365, 5442204, 5594513, 5790298, 76061764, 87367608, 172206172, 295397041, 302979532, 328878574, 359333139, 407283053, 452737314, 501039929, 520590566, 589796196, 946786476, 1028013785, 1041537810, 1067353468, 1103412149, 1181037546, 1184517125, 1204816148, 1220160980, 1224700491, 1224901875, 1247875546, 1280845662, 1282943179, 1352786672, 1532710347, 1547539107, 1620824029, 1621420777, 1623148745, 1648581351, 1705629508, 1744813180, 1830310359, 1836776262, 1838453864, 1915412854, 1916009602, 1955029599, 1981972957, 1998030664, 2025055113, 2082663554, 2084789794, 2127021138});
		
		public static  global::Array<object> fields = new global::Array<object>(new object[]{"b", "i", "__a", "arr", "len", "map", "pop", "tag", "remove", "filter", "get_power", "GetHashCode", "methodName", "iterator", "lastIndexOf", "hasNext", "reverse", "insert", "length", "getTag", "toString", "getStrongest", "index", "splice", "copy", "join", "power", "concat", "get_name", "name", "next", "push", "sort", "quicksort", "spliceVoid", "concatNative", "className", "__unsafe_get", "__unsafe_set", "indexOf", "fileName", "toDynamic", "constructs", "customParams", "params", "set_power", "__get", "__set", "Equals", "lineNumber", "set_name", "unshift", "shift", "__hx_createEmpty", "slice"});
		
		public static   int doHash(string s){
			unchecked {
				#line 34 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				int acc = 0;
				{
					#line 35 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
					int _g1 = 0;
					#line 35 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
					int _g = s.Length;
					#line 35 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
					while (( _g1 < _g )){
						#line 35 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
						int i = _g1++;
						#line 37 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
						acc = ( ( ( 223 * (( acc >> 1 )) ) + global::haxe.lang.StringExt.charCodeAt(s, i).@value ) << 1 );
					}
					
				}
				
				#line 40 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				return ((int) (( ((uint) (acc) ) >> 1 )) );
			}
			#line default
		}
		
		
		public static   string lookupHash(int key){
			unchecked {
				#line 46 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				global::Array<int> ids = global::haxe.lang.FieldLookup.fieldIds;
				int min = 0;
				int max = ids.length;
				#line 50 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				while (( min < max )){
					#line 52 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
					int mid = ( min + ( (( max - min )) / 2 ) );
					int imid = ids[mid];
					if (( key < imid )) {
						#line 56 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
						max = mid;
					}
					 else {
						#line 57 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
						if (( key > imid )) {
							#line 58 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
							min = ( mid + 1 );
						}
						 else {
							#line 60 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
							return global::haxe.lang.Runtime.toString(global::haxe.lang.FieldLookup.fields[mid]);
						}
						
					}
					
				}
				
				#line 64 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				throw global::haxe.lang.HaxeException.wrap(global::haxe.lang.Runtime.concat("Field not found for hash ", global::haxe.lang.Runtime.toString(key)));
			}
			#line default
		}
		
		
		public static   int hash(string s){
			unchecked {
				#line 69 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				if (string.Equals(s, default(string))) {
					#line 69 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
					return 0;
				}
				
				#line 71 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				int key = default(int);
				#line 71 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				{
					#line 71 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
					int acc = 0;
					#line 71 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
					{
						#line 71 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
						int _g1 = 0;
						#line 71 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
						int _g = s.Length;
						#line 71 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
						while (( _g1 < _g )){
							#line 71 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
							int i = _g1++;
							#line 71 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
							acc = ( ( ( 223 * (( acc >> 1 )) ) + global::haxe.lang.StringExt.charCodeAt(s, i).@value ) << 1 );
						}
						
					}
					
					#line 71 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
					key = ((int) (( ((uint) (acc) ) >> 1 )) );
				}
				
				#line 74 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				global::Array<int> ids = global::haxe.lang.FieldLookup.fieldIds;
				int min = 0;
				int max = ids.length;
				#line 78 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				while (( min < max )){
					#line 80 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
					int mid = ((int) (( min + ( ((double) ((( max - min ))) ) / 2 ) )) );
					int imid = ids[mid];
					if (( key < imid )) {
						#line 84 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
						max = mid;
					}
					 else {
						#line 85 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
						if (( key > imid )) {
							#line 86 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
							min = ( mid + 1 );
						}
						 else {
							#line 88 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
							string field = global::haxe.lang.Runtime.toString(global::haxe.lang.FieldLookup.fields[mid]);
							if ( ! (string.Equals(field, s)) ) {
								#line 90 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
								return  ~ (key) ;
							}
							
							#line 91 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
							return key;
						}
						
					}
					
				}
				
				#line 95 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				ids.insert(min, key);
				global::haxe.lang.FieldLookup.fields.insert(min, s);
				return key;
			}
			#line default
		}
		
		
		public static   int findHash(int hash, global::Array<int> hashs){
			unchecked {
				#line 102 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				int min = 0;
				int max = hashs.length;
				#line 105 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				while (( min < max )){
					#line 107 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
					int mid = ( (( max + min )) / 2 );
					int imid = hashs[mid];
					if (( hash < imid )) {
						#line 111 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
						max = mid;
					}
					 else {
						#line 112 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
						if (( hash > imid )) {
							#line 113 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
							min = ( mid + 1 );
						}
						 else {
							#line 115 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
							return mid;
						}
						
					}
					
				}
				
				#line 119 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				return  ~ (min) ;
			}
			#line default
		}
		
		
		public static  new object __hx_createEmpty(){
			unchecked {
				#line 25 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				return new global::haxe.lang.FieldLookup(((global::haxe.lang.EmptyObject) (global::haxe.lang.EmptyObject.EMPTY) ));
			}
			#line default
		}
		
		
		public static  new object __hx_create(global::Array arr){
			unchecked {
				#line 25 "C:\\HaxeToolkit\\haxe\\std\\cs\\internal\\FieldLookup.hx"
				return new global::haxe.lang.FieldLookup();
			}
			#line default
		}
		
		
	}
}


