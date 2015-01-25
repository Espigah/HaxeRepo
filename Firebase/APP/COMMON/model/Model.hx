package model;
import haxe.Json;

typedef FormModel = {
	> UserModelData,
   ////@:optional var login : String;   
   ////@:optional var pass : String;   
   ////@:optional var uid : String;   
   //@:optional var isRegister : Bool;   
}



typedef RoomModel = {
   @:optional var id : String;   
   @:optional var maxConnections : Int;   
   @:optional var connections : Int;   
   @:optional var open : Bool;   
   @:optional var data : Array<Array<Int>>;   
   @:optional var key : String;   
}


typedef GridModel = {
	 @:optional var l : Int;  
	 @:optional var c : Int;  
	 @:optional var value : Int;  
}



typedef UserModelData = {
   @:optional var login : String;   
   @:optional var pass : String;   
   @:optional var uid : String;   
   @:optional var roomKey : String;   
   @:optional var roomId : Int;    
}