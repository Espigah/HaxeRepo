package;

extern class Firebase 
{
    static function __init__():Void untyped {
        __call__("require_once", "firebase.php");
    }
	public function new(root:String, isDebug:Bool = false):Void;
	 public function push($data:Dynamic):Dynamic;
	 public function set($data:Dynamic):Dynamic;
	 public function update($data:Dynamic):Dynamic;
	 public function delete($data:Dynamic):Dynamic;
	 public function child($child:Dynamic):Dynamic;
}



