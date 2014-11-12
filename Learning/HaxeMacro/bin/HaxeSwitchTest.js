(function () { "use strict";
function $extend(from, fields) {
	function Inherit() {} Inherit.prototype = from; var proto = new Inherit();
	for (var name in fields) proto[name] = fields[name];
	if( fields.toString !== Object.prototype.toString ) proto.toString = fields.toString;
	return proto;
}
var Main = function() { };
Main.__name__ = true;
Main.main = function() {
	new lab.macros.test.native.NativeTestRunner();
};
var Std = function() { };
Std.__name__ = true;
Std.string = function(s) {
	return js.Boot.__string_rec(s,"");
};
var StringTools = function() { };
StringTools.__name__ = true;
StringTools.htmlEscape = function(s,quotes) {
	s = s.split("&").join("&amp;").split("<").join("&lt;").split(">").join("&gt;");
	if(quotes) return s.split("\"").join("&quot;").split("'").join("&#039;"); else return s;
};
var haxe = {};
haxe.unit = {};
haxe.unit.TestCase = function() {
};
haxe.unit.TestCase.__name__ = true;
haxe.unit.TestCase.prototype = {
	setup: function() {
	}
	,tearDown: function() {
	}
	,print: function(v) {
		haxe.unit.TestRunner.print(v);
	}
	,assertTrue: function(b,c) {
		this.currentTest.done = true;
		if(b == false) {
			this.currentTest.success = false;
			this.currentTest.error = "expected true but was false";
			this.currentTest.posInfos = c;
			throw this.currentTest;
		}
	}
	,assertFalse: function(b,c) {
		this.currentTest.done = true;
		if(b == true) {
			this.currentTest.success = false;
			this.currentTest.error = "expected false but was true";
			this.currentTest.posInfos = c;
			throw this.currentTest;
		}
	}
	,assertEquals: function(expected,actual,c) {
		this.currentTest.done = true;
		if(actual != expected) {
			this.currentTest.success = false;
			this.currentTest.error = "expected '" + Std.string(expected) + "' but was '" + Std.string(actual) + "'";
			this.currentTest.posInfos = c;
			throw this.currentTest;
		}
	}
};
haxe.unit.TestRunner = function() { };
haxe.unit.TestRunner.__name__ = true;
haxe.unit.TestRunner.print = function(v) {
	var msg = js.Boot.__string_rec(v,"");
	var d;
	if(typeof(document) != "undefined" && (d = document.getElementById("haxe:trace")) != null) {
		msg = msg.split("\n").join("<br/>");
		d.innerHTML += StringTools.htmlEscape(msg) + "<br/>";
	} else if(typeof process != "undefined" && process.stdout != null && process.stdout.write != null) process.stdout.write(msg); else if(typeof console != "undefined" && console.log != null) console.log(msg);
};
haxe.unit.TestStatus = function() { };
haxe.unit.TestStatus.__name__ = true;
var js = {};
js.Boot = function() { };
js.Boot.__name__ = true;
js.Boot.__string_rec = function(o,s) {
	if(o == null) return "null";
	if(s.length >= 5) return "<...>";
	var t = typeof(o);
	if(t == "function" && (o.__name__ || o.__ename__)) t = "object";
	switch(t) {
	case "object":
		if(o instanceof Array) {
			if(o.__enum__) {
				if(o.length == 2) return o[0];
				var str = o[0] + "(";
				s += "\t";
				var _g1 = 2;
				var _g = o.length;
				while(_g1 < _g) {
					var i = _g1++;
					if(i != 2) str += "," + js.Boot.__string_rec(o[i],s); else str += js.Boot.__string_rec(o[i],s);
				}
				return str + ")";
			}
			var l = o.length;
			var i1;
			var str1 = "[";
			s += "\t";
			var _g2 = 0;
			while(_g2 < l) {
				var i2 = _g2++;
				str1 += (i2 > 0?",":"") + js.Boot.__string_rec(o[i2],s);
			}
			str1 += "]";
			return str1;
		}
		var tostr;
		try {
			tostr = o.toString;
		} catch( e ) {
			return "???";
		}
		if(tostr != null && tostr != Object.toString) {
			var s2 = o.toString();
			if(s2 != "[object Object]") return s2;
		}
		var k = null;
		var str2 = "{\n";
		s += "\t";
		var hasp = o.hasOwnProperty != null;
		for( var k in o ) {
		if(hasp && !o.hasOwnProperty(k)) {
			continue;
		}
		if(k == "prototype" || k == "__class__" || k == "__super__" || k == "__interfaces__" || k == "__properties__") {
			continue;
		}
		if(str2.length != 2) str2 += ", \n";
		str2 += s + k + " : " + js.Boot.__string_rec(o[k],s);
		}
		s = s.substring(1);
		str2 += "\n" + s + "}";
		return str2;
	case "function":
		return "<function>";
	case "string":
		return o;
	default:
		return String(o);
	}
};
var lab = {};
lab.macros = {};
lab.macros.macro0 = {};
lab.macros.macro0.FileNames = function() {
};
lab.macros.macro0.FileNames.__name__ = true;
lab.macros.macro0.MacroFileNames = function() { };
lab.macros.macro0.MacroFileNames.__name__ = true;
lab.macros.macro0.FileRef = function(value) {
	this.value = value;
	this.name = value.split("-").join("_").split(".").join("__");
	this.documentation = "Reference to file on disk \"" + value + "\". (auto generated)";
};
lab.macros.macro0.FileRef.__name__ = true;
lab.macros.macro3 = {};
lab.macros.macro3.BuildDate = function() { };
lab.macros.macro3.BuildDate.__name__ = true;
lab.macros.test = {};
lab.macros.test["native"] = {};
lab.macros.test.native.NativeTestRunner = function() {
	this.testList = ["String"];
	console.log(this.testList);
};
lab.macros.test.native.NativeTestRunner.__name__ = true;
lab.macros.test.native.TestMacro0 = function() {
	haxe.unit.TestCase.call(this);
};
lab.macros.test.native.TestMacro0.__name__ = true;
lab.macros.test.native.TestMacro0.__super__ = haxe.unit.TestCase;
lab.macros.test.native.TestMacro0.prototype = $extend(haxe.unit.TestCase.prototype,{
	testBasic: function() {
		this.assertTrue(Object.prototype.hasOwnProperty.call(lab.macros.macro0.FileNames,"assets1__txt"),{ fileName : "TestMacro0.hx", lineNumber : 14, className : "lab.macros.test.native.TestMacro0", methodName : "testBasic"});
		this.assertFalse(Object.prototype.hasOwnProperty.call(lab.macros.macro0.FileNames,"assets2__txt"),{ fileName : "TestMacro0.hx", lineNumber : 15, className : "lab.macros.test.native.TestMacro0", methodName : "testBasic"});
		this.assertTrue(Object.prototype.hasOwnProperty.call(lab.macros.macro0.FileNames,"assets3__txt"),{ fileName : "TestMacro0.hx", lineNumber : 16, className : "lab.macros.test.native.TestMacro0", methodName : "testBasic"});
		this.assertEquals("assets1.txt","assets1.txt",{ fileName : "TestMacro0.hx", lineNumber : 17, className : "lab.macros.test.native.TestMacro0", methodName : "testBasic"});
	}
});
lab.macros.test.native.TestMacro3 = function() {
	haxe.unit.TestCase.call(this);
};
lab.macros.test.native.TestMacro3.__name__ = true;
lab.macros.test.native.TestMacro3.__super__ = haxe.unit.TestCase;
lab.macros.test.native.TestMacro3.prototype = $extend(haxe.unit.TestCase.prototype,{
	testBasic: function() {
		this.print("Date = " + "2014-11-10 10:24:07");
		this.assertTrue(Object.prototype.hasOwnProperty.call(lab.macros.macro3.BuildDate,"buildDate"),{ fileName : "TestMacro3.hx", lineNumber : 16, className : "lab.macros.test.native.TestMacro3", methodName : "testBasic"});
	}
});
String.__name__ = true;
Array.__name__ = true;
lab.macros.macro0.FileNames.assets1__txt = "assets1.txt";
lab.macros.macro0.FileNames.assets3__txt = "assets3.txt";
lab.macros.macro3.BuildDate.buildDate = "2014-11-10 10:24:07";
Main.main();
})();

//# sourceMappingURL=HaxeSwitchTest.js.map