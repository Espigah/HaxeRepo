<?php

class haxe_format_JsonPrinter {
	public function __construct($replacer) {
		if(!php_Boot::$skip_constructor) {
		$this->replacer = $replacer;
		$this->buf = new StringBuf();
	}}
	public $buf;
	public $replacer;
	public function write($k, $v) {
		if($this->replacer !== null) {
			$v = $this->replacer($k, $v);
		}
		{
			$_g = Type::typeof($v);
			switch($_g->index) {
			case 8:{
				$this->buf->add("\"???\"");
			}break;
			case 4:{
				$this->fieldsString($v, Reflect::fields($v));
			}break;
			case 1:{
				$v1 = $v;
				$this->buf->add($v1);
			}break;
			case 2:{
				$v2 = null;
				if(Math::isFinite($v)) {
					$v2 = $v;
				} else {
					$v2 = "null";
				}
				$this->buf->add($v2);
			}break;
			case 5:{
				$this->buf->add("\"<fun>\"");
			}break;
			case 6:{
				$c = $_g->params[0];
				if((is_object($_t = $c) && !($_t instanceof Enum) ? $_t === _hx_qtype("String") : $_t == _hx_qtype("String"))) {
					$this->quote($v);
				} else {
					if((is_object($_t2 = $c) && !($_t2 instanceof Enum) ? $_t2 === _hx_qtype("Array") : $_t2 == _hx_qtype("Array"))) {
						$v3 = $v;
						$this->buf->b .= "[";
						$len = $v3->length;
						if($len > 0) {
							$this->write(0, $v3[0]);
							$i = 1;
							while($i < $len) {
								$this->buf->b .= ",";
								$this->write($i, $v3[$i++]);
							}
						}
						$this->buf->b .= "]";
					} else {
						if((is_object($_t3 = $c) && !($_t3 instanceof Enum) ? $_t3 === _hx_qtype("haxe.ds.StringMap") : $_t3 == _hx_qtype("haxe.ds.StringMap"))) {
							$v4 = $v;
							$o = _hx_anonymous(array());
							if(null == $v4) throw new HException('null iterable');
							$__hx__it = $v4->keys();
							while($__hx__it->hasNext()) {
								$k1 = $__hx__it->next();
								$value = $v4->get($k1);
								$o->{$k1} = $value;
								unset($value);
							}
							$this->fieldsString($o, Reflect::fields($o));
						} else {
							if((is_object($_t4 = $c) && !($_t4 instanceof Enum) ? $_t4 === _hx_qtype("Date") : $_t4 == _hx_qtype("Date"))) {
								$v5 = $v;
								$this->quote($v5->toString());
							} else {
								$this->fieldsString($v, Reflect::fields($v));
							}
						}
					}
				}
			}break;
			case 7:{
				$i1 = null;
				{
					$e = $v;
					$i1 = $e->index;
				}
				{
					$v6 = $i1;
					$this->buf->add($v6);
				}
			}break;
			case 3:{
				$this->buf->add((($v) ? "true" : "false"));
			}break;
			case 0:{
				$this->buf->add("null");
			}break;
			}
		}
	}
	public function fieldsString($v, $fields) {
		$first = true;
		$this->buf->b .= "{";
		{
			$_g = 0;
			while($_g < $fields->length) {
				$f = $fields[$_g];
				++$_g;
				$value = Reflect::field($v, $f);
				if(Reflect::isFunction($value)) {
					continue;
				}
				if($first) {
					$first = false;
				} else {
					$this->buf->b .= ",";
				}
				$this->quote($f);
				$this->buf->b .= ":";
				$this->write($f, $value);
				unset($value,$f);
			}
		}
		$this->buf->b .= "}";
	}
	public function quote($s) {
		if(strlen($s) !== haxe_Utf8::length($s)) {
			$this->quoteUtf8($s);
			return;
		}
		$this->buf->b .= "\"";
		$i = 0;
		while(true) {
			$c = null;
			{
				$index = $i++;
				$c = ord(substr($s,$index,1));
				unset($index);
			}
			if(($c === 0)) {
				break;
			}
			switch($c) {
			case 34:{
				$this->buf->add("\\\"");
			}break;
			case 92:{
				$this->buf->add("\\\\");
			}break;
			case 10:{
				$this->buf->add("\\n");
			}break;
			case 13:{
				$this->buf->add("\\r");
			}break;
			case 9:{
				$this->buf->add("\\t");
			}break;
			case 8:{
				$this->buf->add("\\b");
			}break;
			case 12:{
				$this->buf->add("\\f");
			}break;
			default:{
				$this->buf->b .= _hx_string_or_null(chr($c));
			}break;
			}
			unset($c);
		}
		$this->buf->b .= "\"";
	}
	public function quoteUtf8($s) {
		$u = new haxe_Utf8(null);
		haxe_Utf8::iter($s, array(new _hx_lambda(array(&$s, &$u), "haxe_format_JsonPrinter_0"), 'execute'));
		$this->buf->add("\"");
		$this->buf->add($u->toString());
		$this->buf->add("\"");
	}
	public function __call($m, $a) {
		if(isset($this->$m) && is_callable($this->$m))
			return call_user_func_array($this->$m, $a);
		else if(isset($this->__dynamics[$m]) && is_callable($this->__dynamics[$m]))
			return call_user_func_array($this->__dynamics[$m], $a);
		else if('toString' == $m)
			return $this->__toString();
		else
			throw new HException('Unable to call <'.$m.'>');
	}
	static function hprint($o, $replacer = null) {
		$printer = new haxe_format_JsonPrinter($replacer);
		$printer->write("", $o);
		return $printer->buf->b;
	}
	function __toString() { return 'haxe.format.JsonPrinter'; }
}
function haxe_format_JsonPrinter_0(&$s, &$u, $c) {
	{
		switch($c) {
		case 92:case 34:{
			$u->addChar(92);
			$u->addChar($c);
		}break;
		case 10:{
			$u->addChar(92);
			$u->addChar(110);
		}break;
		case 13:{
			$u->addChar(92);
			$u->addChar(114);
		}break;
		case 9:{
			$u->addChar(92);
			$u->addChar(116);
		}break;
		case 8:{
			$u->addChar(92);
			$u->addChar(98);
		}break;
		case 12:{
			$u->addChar(92);
			$u->addChar(102);
		}break;
		default:{
			$u->addChar($c);
		}break;
		}
	}
}
