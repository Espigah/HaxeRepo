(function () { "use strict";
var Main = function() { };
Main.__name__ = true;
Main.main = function() {
	new test.Test();
};
var haxe = {};
haxe.Log = function() { };
haxe.Log.__name__ = true;
haxe.Log.trace = function(v,infos) {
	js.Boot.__trace(v,infos);
};
var js = {};
js.Boot = function() { };
js.Boot.__name__ = true;
js.Boot.__unhtml = function(s) {
	return s.split("&").join("&amp;").split("<").join("&lt;").split(">").join("&gt;");
};
js.Boot.__trace = function(v,i) {
	var msg;
	if(i != null) msg = i.fileName + ":" + i.lineNumber + ": "; else msg = "";
	msg += js.Boot.__string_rec(v,"");
	if(i != null && i.customParams != null) {
		var _g = 0;
		var _g1 = i.customParams;
		while(_g < _g1.length) {
			var v1 = _g1[_g];
			++_g;
			msg += "," + js.Boot.__string_rec(v1,"");
		}
	}
	var d;
	if(typeof(document) != "undefined" && (d = document.getElementById("haxe:trace")) != null) d.innerHTML += js.Boot.__unhtml(msg) + "<br/>"; else if(typeof console != "undefined" && console.log != null) console.log(msg);
};
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
var model = {};
model.bo = {};
model.bo.NaturalSelectionBO = function() {
};
model.bo.NaturalSelectionBO.__name__ = true;
model.bo.NaturalSelectionBO.prototype = {
	getStrongest: function(_personVOList) {
		var personVO = null;
		var length = _personVOList.length;
		var _g = 0;
		while(_g < length) {
			var i = _g++;
			var tmpPerson = _personVOList[i];
			if(personVO == null) personVO = tmpPerson; else if(tmpPerson.get_power() > personVO.get_power()) personVO = tmpPerson;
		}
		return personVO;
	}
};
model.vo = {};
model.vo.PersonVO = function(name,power) {
	this.set_name(name);
	this.set_power(power);
};
model.vo.PersonVO.__name__ = true;
model.vo.PersonVO.prototype = {
	get_name: function() {
		return this.name;
	}
	,set_name: function(value) {
		return this.name = value;
	}
	,get_power: function() {
		return this.power;
	}
	,set_power: function(value) {
		return this.power = value;
	}
};
var test = {};
test.Test = function() {
	var personVO = new model.bo.NaturalSelectionBO().getStrongest([new model.vo.PersonVO("p1",5),new model.vo.PersonVO("p2",9)]);
	haxe.Log.trace("-> NaturalSelection ->",{ fileName : "Test.hx", lineNumber : 15, className : "test.Test", methodName : "new"});
	haxe.Log.trace("Person Name:",{ fileName : "Test.hx", lineNumber : 16, className : "test.Test", methodName : "new", customParams : [personVO.get_name()]});
	haxe.Log.trace("Person Power:",{ fileName : "Test.hx", lineNumber : 17, className : "test.Test", methodName : "new", customParams : [personVO.get_power()]});
	haxe.Log.trace("<- NaturalSelection <-",{ fileName : "Test.hx", lineNumber : 18, className : "test.Test", methodName : "new"});
};
test.Test.__name__ = true;
String.__name__ = true;
Array.__name__ = true;
Main.main();
})();
