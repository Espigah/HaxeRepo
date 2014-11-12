package test {
	import model.vo.PersonVO;
	import haxe.Log;
	import model.bo.NaturalSelectionBO;
	import flash.Boot;
	public class Test {
		public function Test() : void { if( !flash.Boot.skip_constructor ) {
			var personVO : model.vo.PersonVO = new model.bo.NaturalSelectionBO().getStrongest([new model.vo.PersonVO("p1",5),new model.vo.PersonVO("p2",9)]);
			haxe.Log._trace("-> NaturalSelection ->",{ fileName : "Test.hx", lineNumber : 15, className : "test.Test", methodName : "new"});
			haxe.Log._trace("Person Name:",{ fileName : "Test.hx", lineNumber : 16, className : "test.Test", methodName : "new", customParams : [personVO.get_name()]});
			haxe.Log._trace("Person Power:",{ fileName : "Test.hx", lineNumber : 17, className : "test.Test", methodName : "new", customParams : [personVO.get_power()]});
			haxe.Log._trace("<- NaturalSelection <-",{ fileName : "Test.hx", lineNumber : 18, className : "test.Test", methodName : "new"});
		}}
		
	}
}
