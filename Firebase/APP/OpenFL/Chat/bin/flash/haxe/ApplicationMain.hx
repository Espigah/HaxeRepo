import lime.Assets;
#if !macro


class ApplicationMain {
	
	
	public static var config:lime.app.Config;
	public static var preloader:openfl.display.Preloader;
	
	private static var app:lime.app.Application;
	
	
	public static function create ():Void {
		
		app = new openfl.display.Application ();
		app.create (config);
		
		var display = new NMEPreloader ();
		
		preloader = new openfl.display.Preloader (display);
		preloader.onComplete = init;
		preloader.create (config);
		
		#if js
		var urls = [];
		var types = [];
		
		
		urls.push ("Oxygen Bold");
		types.push (AssetType.FONT);
		
		
		urls.push ("Oxygen Regular");
		types.push (AssetType.FONT);
		
		
		urls.push ("assets/styles/default/circle.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/default/collapse.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/default/cross.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/default/expand.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/default/up_down.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/arrow_down.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/arrow_down_dark.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/arrow_down_disabled.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/arrow_left.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/arrow_left_disabled.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/arrow_right.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/arrow_right2.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/arrow_right_dark.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/arrow_right_disabled.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/arrow_up.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/arrow_up_disabled.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/circle_dark.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/cross_dark.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/cross_dark_disabled.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/cross_light_small.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/gradient.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/styles/gradient/gradient.min.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/styles/gradient/gradient_mobile.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/styles/gradient/gradient_mobile.min.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/styles/gradient/gripper_horizontal.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/gripper_horizontal_disabled.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/gripper_vertical.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/gripper_vertical_disabled.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/hsplitter_gripper.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/gradient/vsplitter_gripper.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/accordion.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/styles/windows/accordion.min.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/styles/windows/button.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/buttons.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/styles/windows/buttons.min.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/styles/windows/calendar.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/styles/windows/checkbox.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/container.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/glyphs/down_arrow.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/glyphs/hscroll_thumb_gripper_down.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/glyphs/hscroll_thumb_gripper_over.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/glyphs/hscroll_thumb_gripper_up.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/glyphs/left_arrow.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/glyphs/right_arrow.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/glyphs/up_arrow.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/glyphs/vscroll_thumb_gripper_down.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/glyphs/vscroll_thumb_gripper_over.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/glyphs/vscroll_thumb_gripper_up.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/hprogress.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/hscroll.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/listview.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/styles/windows/listview.min.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/styles/windows/listview.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/menus.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/styles/windows/optionbox.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/popup.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/popups.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/styles/windows/rtf.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/styles/windows/scrolls.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/styles/windows/scrolls.min.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/styles/windows/sliders.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/styles/windows/tab.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/tabs.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("assets/styles/windows/textinput.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/vprogress.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/vscroll.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("assets/styles/windows/windows.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/default/circle.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/default/collapse.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/default/cross.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/default/expand.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/default/up_down.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/arrow_down.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/arrow_down_dark.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/arrow_down_disabled.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/arrow_left.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/arrow_left_disabled.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/arrow_right.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/arrow_right2.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/arrow_right_dark.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/arrow_right_disabled.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/arrow_up.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/arrow_up_disabled.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/circle_dark.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/cross_dark.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/cross_dark_disabled.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/cross_light_small.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/gradient.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/gradient/gradient.min.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/gradient/gradient_mobile.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/gradient/gradient_mobile.min.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/gradient/gripper_horizontal.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/gripper_horizontal_disabled.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/gripper_vertical.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/gripper_vertical_disabled.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/hsplitter_gripper.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/gradient/vsplitter_gripper.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/accordion.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/windows/accordion.min.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/windows/button.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/buttons.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/windows/buttons.min.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/windows/calendar.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/windows/checkbox.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/container.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/glyphs/down_arrow.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/glyphs/hscroll_thumb_gripper_down.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/glyphs/hscroll_thumb_gripper_over.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/glyphs/hscroll_thumb_gripper_up.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/glyphs/left_arrow.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/glyphs/right_arrow.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/glyphs/up_arrow.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/glyphs/vscroll_thumb_gripper_down.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/glyphs/vscroll_thumb_gripper_over.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/glyphs/vscroll_thumb_gripper_up.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/hprogress.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/hscroll.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/listview.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/windows/listview.min.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/windows/listview.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/menus.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/windows/optionbox.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/popup.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/popups.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/windows/rtf.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/windows/scrolls.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/windows/scrolls.min.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/windows/sliders.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/windows/tab.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/tabs.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("styles/windows/textinput.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/vprogress.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/vscroll.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("styles/windows/windows.css");
		types.push (AssetType.TEXT);
		
		
		urls.push ("Oxygen Bold");
		types.push (AssetType.FONT);
		
		
		urls.push ("Oxygen Regular");
		types.push (AssetType.FONT);
		
		
		urls.push ("img/b0.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/b1.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("img/b2.png");
		types.push (AssetType.IMAGE);
		
		
		urls.push ("ui/form.xml");
		types.push (AssetType.TEXT);
		
		
		
		preloader.load (urls, types);
		#end
		
		var result = app.exec ();
		
		#if sys
		Sys.exit (result);
		#end
		
	}
	
	
	public static function init ():Void {
		
		var loaded = 0;
		var total = 0;
		var library_onLoad = function (__) {
			
			loaded++;
			
			if (loaded == total) {
				
				start ();
				
			}
			
		}
		
		preloader = null;
		
		
		
		if (loaded == total) {
			
			start ();
			
		}
		
	}
	
	
	public static function main () {
		
		config = {
			
			antialiasing: Std.int (0),
			background: Std.int (0),
			borderless: false,
			depthBuffer: false,
			fps: Std.int (60),
			fullscreen: false,
			height: Std.int (480),
			orientation: "",
			resizable: true,
			stencilBuffer: false,
			title: "Firebase",
			vsync: false,
			width: Std.int (800),
			
		}
		
		#if js
		#if (munit || utest)
		flash.Lib.embed (null, 800, 480, "000000");
		#end
		#else
		create ();
		#end
		
	}
	
	
	public static function start ():Void {
		
		openfl.Lib.current.stage.align = openfl.display.StageAlign.TOP_LEFT;
		openfl.Lib.current.stage.scaleMode = openfl.display.StageScaleMode.NO_SCALE;
		
		var hasMain = false;
		
		for (methodName in Type.getClassFields (Main)) {
			
			if (methodName == "main") {
				
				hasMain = true;
				break;
				
			}
			
		}
		
		if (hasMain) {
			
			Reflect.callMethod (Main, Reflect.field (Main, "main"), []);
			
		} else {
			
			var instance:DocumentClass = Type.createInstance (DocumentClass, []);
			
			/*if (Std.is (instance, openfl.display.DisplayObject)) {
				
				openfl.Lib.current.addChild (cast instance);
				
			}*/
			
		}
		
		openfl.Lib.current.stage.dispatchEvent (new openfl.events.Event (openfl.events.Event.RESIZE, false, false));
		
	}
	
	
	#if neko
	@:noCompletion public static function __init__ () {
		
		var loader = new neko.vm.Loader (untyped $loader);
		loader.addPath (haxe.io.Path.directory (Sys.executablePath ()));
		loader.addPath ("./");
		loader.addPath ("@executable_path/");
		
	}
	#end
	
	
}


@:build(DocumentClass.build())
@:keep class DocumentClass extends Main {}


#else


import haxe.macro.Context;
import haxe.macro.Expr;


class DocumentClass {
	
	
	macro public static function build ():Array<Field> {
		
		var classType = Context.getLocalClass ().get ();
		var searchTypes = classType;
		
		while (searchTypes.superClass != null) {
			
			if (searchTypes.pack.length == 2 && searchTypes.pack[1] == "display" && searchTypes.name == "DisplayObject") {
				
				var fields = Context.getBuildFields ();
				
				var method = macro {
					
					openfl.Lib.current.addChild (this);
					super ();
					dispatchEvent (new openfl.events.Event (openfl.events.Event.ADDED_TO_STAGE, false, false));
					
				}
				
				fields.push ({ name: "new", access: [ APublic ], kind: FFun({ args: [], expr: method, params: [], ret: macro :Void }), pos: Context.currentPos () });
				
				return fields;
				
			}
			
			searchTypes = searchTypes.superClass.t.get ();
			
		}
		
		return null;
		
	}
	
	
}


#end
