package lime;


import lime.utils.Assets;


class AssetData {

	private static var initialized:Bool = false;
	
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var path = new #if haxe3 Map <String, #else Hash <#end String> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();	
	
	public static function initialize():Void {
		
		if (!initialized) {
			
			path.set ("assets/fonts/Oxygen-Bold.ttf", "assets/fonts/Oxygen-Bold.ttf");
			type.set ("assets/fonts/Oxygen-Bold.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("assets/fonts/Oxygen.ttf", "assets/fonts/Oxygen.ttf");
			type.set ("assets/fonts/Oxygen.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("assets/styles/default/circle.png", "assets/styles/default/circle.png");
			type.set ("assets/styles/default/circle.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/default/collapse.png", "assets/styles/default/collapse.png");
			type.set ("assets/styles/default/collapse.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/default/cross.png", "assets/styles/default/cross.png");
			type.set ("assets/styles/default/cross.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/default/expand.png", "assets/styles/default/expand.png");
			type.set ("assets/styles/default/expand.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/default/up_down.png", "assets/styles/default/up_down.png");
			type.set ("assets/styles/default/up_down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/arrow_down.png", "assets/styles/gradient/arrow_down.png");
			type.set ("assets/styles/gradient/arrow_down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/arrow_down_dark.png", "assets/styles/gradient/arrow_down_dark.png");
			type.set ("assets/styles/gradient/arrow_down_dark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/arrow_down_disabled.png", "assets/styles/gradient/arrow_down_disabled.png");
			type.set ("assets/styles/gradient/arrow_down_disabled.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/arrow_left.png", "assets/styles/gradient/arrow_left.png");
			type.set ("assets/styles/gradient/arrow_left.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/arrow_left_disabled.png", "assets/styles/gradient/arrow_left_disabled.png");
			type.set ("assets/styles/gradient/arrow_left_disabled.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/arrow_right.png", "assets/styles/gradient/arrow_right.png");
			type.set ("assets/styles/gradient/arrow_right.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/arrow_right2.png", "assets/styles/gradient/arrow_right2.png");
			type.set ("assets/styles/gradient/arrow_right2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/arrow_right_dark.png", "assets/styles/gradient/arrow_right_dark.png");
			type.set ("assets/styles/gradient/arrow_right_dark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/arrow_right_disabled.png", "assets/styles/gradient/arrow_right_disabled.png");
			type.set ("assets/styles/gradient/arrow_right_disabled.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/arrow_up.png", "assets/styles/gradient/arrow_up.png");
			type.set ("assets/styles/gradient/arrow_up.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/arrow_up_disabled.png", "assets/styles/gradient/arrow_up_disabled.png");
			type.set ("assets/styles/gradient/arrow_up_disabled.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/circle_dark.png", "assets/styles/gradient/circle_dark.png");
			type.set ("assets/styles/gradient/circle_dark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/cross_dark.png", "assets/styles/gradient/cross_dark.png");
			type.set ("assets/styles/gradient/cross_dark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/cross_dark_disabled.png", "assets/styles/gradient/cross_dark_disabled.png");
			type.set ("assets/styles/gradient/cross_dark_disabled.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/cross_light_small.png", "assets/styles/gradient/cross_light_small.png");
			type.set ("assets/styles/gradient/cross_light_small.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/gradient.css", "assets/styles/gradient/gradient.css");
			type.set ("assets/styles/gradient/gradient.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/styles/gradient/gradient.min.css", "assets/styles/gradient/gradient.min.css");
			type.set ("assets/styles/gradient/gradient.min.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/styles/gradient/gradient_mobile.css", "assets/styles/gradient/gradient_mobile.css");
			type.set ("assets/styles/gradient/gradient_mobile.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/styles/gradient/gradient_mobile.min.css", "assets/styles/gradient/gradient_mobile.min.css");
			type.set ("assets/styles/gradient/gradient_mobile.min.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/styles/gradient/gripper_horizontal.png", "assets/styles/gradient/gripper_horizontal.png");
			type.set ("assets/styles/gradient/gripper_horizontal.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/gripper_horizontal_disabled.png", "assets/styles/gradient/gripper_horizontal_disabled.png");
			type.set ("assets/styles/gradient/gripper_horizontal_disabled.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/gripper_vertical.png", "assets/styles/gradient/gripper_vertical.png");
			type.set ("assets/styles/gradient/gripper_vertical.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/gripper_vertical_disabled.png", "assets/styles/gradient/gripper_vertical_disabled.png");
			type.set ("assets/styles/gradient/gripper_vertical_disabled.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/hsplitter_gripper.png", "assets/styles/gradient/hsplitter_gripper.png");
			type.set ("assets/styles/gradient/hsplitter_gripper.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/gradient/vsplitter_gripper.png", "assets/styles/gradient/vsplitter_gripper.png");
			type.set ("assets/styles/gradient/vsplitter_gripper.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/accordion.css", "assets/styles/windows/accordion.css");
			type.set ("assets/styles/windows/accordion.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/styles/windows/accordion.min.css", "assets/styles/windows/accordion.min.css");
			type.set ("assets/styles/windows/accordion.min.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/styles/windows/button.png", "assets/styles/windows/button.png");
			type.set ("assets/styles/windows/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/buttons.css", "assets/styles/windows/buttons.css");
			type.set ("assets/styles/windows/buttons.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/styles/windows/buttons.min.css", "assets/styles/windows/buttons.min.css");
			type.set ("assets/styles/windows/buttons.min.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/styles/windows/calendar.css", "assets/styles/windows/calendar.css");
			type.set ("assets/styles/windows/calendar.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/styles/windows/checkbox.png", "assets/styles/windows/checkbox.png");
			type.set ("assets/styles/windows/checkbox.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/container.png", "assets/styles/windows/container.png");
			type.set ("assets/styles/windows/container.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/glyphs/down_arrow.png", "assets/styles/windows/glyphs/down_arrow.png");
			type.set ("assets/styles/windows/glyphs/down_arrow.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/glyphs/hscroll_thumb_gripper_down.png", "assets/styles/windows/glyphs/hscroll_thumb_gripper_down.png");
			type.set ("assets/styles/windows/glyphs/hscroll_thumb_gripper_down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/glyphs/hscroll_thumb_gripper_over.png", "assets/styles/windows/glyphs/hscroll_thumb_gripper_over.png");
			type.set ("assets/styles/windows/glyphs/hscroll_thumb_gripper_over.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/glyphs/hscroll_thumb_gripper_up.png", "assets/styles/windows/glyphs/hscroll_thumb_gripper_up.png");
			type.set ("assets/styles/windows/glyphs/hscroll_thumb_gripper_up.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/glyphs/left_arrow.png", "assets/styles/windows/glyphs/left_arrow.png");
			type.set ("assets/styles/windows/glyphs/left_arrow.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/glyphs/right_arrow.png", "assets/styles/windows/glyphs/right_arrow.png");
			type.set ("assets/styles/windows/glyphs/right_arrow.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/glyphs/up_arrow.png", "assets/styles/windows/glyphs/up_arrow.png");
			type.set ("assets/styles/windows/glyphs/up_arrow.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/glyphs/vscroll_thumb_gripper_down.png", "assets/styles/windows/glyphs/vscroll_thumb_gripper_down.png");
			type.set ("assets/styles/windows/glyphs/vscroll_thumb_gripper_down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/glyphs/vscroll_thumb_gripper_over.png", "assets/styles/windows/glyphs/vscroll_thumb_gripper_over.png");
			type.set ("assets/styles/windows/glyphs/vscroll_thumb_gripper_over.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/glyphs/vscroll_thumb_gripper_up.png", "assets/styles/windows/glyphs/vscroll_thumb_gripper_up.png");
			type.set ("assets/styles/windows/glyphs/vscroll_thumb_gripper_up.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/hprogress.png", "assets/styles/windows/hprogress.png");
			type.set ("assets/styles/windows/hprogress.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/hscroll.png", "assets/styles/windows/hscroll.png");
			type.set ("assets/styles/windows/hscroll.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/listview.css", "assets/styles/windows/listview.css");
			type.set ("assets/styles/windows/listview.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/styles/windows/listview.min.css", "assets/styles/windows/listview.min.css");
			type.set ("assets/styles/windows/listview.min.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/styles/windows/listview.png", "assets/styles/windows/listview.png");
			type.set ("assets/styles/windows/listview.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/menus.css", "assets/styles/windows/menus.css");
			type.set ("assets/styles/windows/menus.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/styles/windows/optionbox.png", "assets/styles/windows/optionbox.png");
			type.set ("assets/styles/windows/optionbox.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/popup.png", "assets/styles/windows/popup.png");
			type.set ("assets/styles/windows/popup.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/popups.css", "assets/styles/windows/popups.css");
			type.set ("assets/styles/windows/popups.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/styles/windows/rtf.css", "assets/styles/windows/rtf.css");
			type.set ("assets/styles/windows/rtf.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/styles/windows/scrolls.css", "assets/styles/windows/scrolls.css");
			type.set ("assets/styles/windows/scrolls.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/styles/windows/scrolls.min.css", "assets/styles/windows/scrolls.min.css");
			type.set ("assets/styles/windows/scrolls.min.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/styles/windows/sliders.css", "assets/styles/windows/sliders.css");
			type.set ("assets/styles/windows/sliders.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/styles/windows/tab.png", "assets/styles/windows/tab.png");
			type.set ("assets/styles/windows/tab.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/tabs.css", "assets/styles/windows/tabs.css");
			type.set ("assets/styles/windows/tabs.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/styles/windows/textinput.png", "assets/styles/windows/textinput.png");
			type.set ("assets/styles/windows/textinput.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/vprogress.png", "assets/styles/windows/vprogress.png");
			type.set ("assets/styles/windows/vprogress.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/vscroll.png", "assets/styles/windows/vscroll.png");
			type.set ("assets/styles/windows/vscroll.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/styles/windows/windows.css", "assets/styles/windows/windows.css");
			type.set ("assets/styles/windows/windows.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/default/circle.png", "styles/default/circle.png");
			type.set ("styles/default/circle.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/default/collapse.png", "styles/default/collapse.png");
			type.set ("styles/default/collapse.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/default/cross.png", "styles/default/cross.png");
			type.set ("styles/default/cross.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/default/expand.png", "styles/default/expand.png");
			type.set ("styles/default/expand.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/default/up_down.png", "styles/default/up_down.png");
			type.set ("styles/default/up_down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/arrow_down.png", "styles/gradient/arrow_down.png");
			type.set ("styles/gradient/arrow_down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/arrow_down_dark.png", "styles/gradient/arrow_down_dark.png");
			type.set ("styles/gradient/arrow_down_dark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/arrow_down_disabled.png", "styles/gradient/arrow_down_disabled.png");
			type.set ("styles/gradient/arrow_down_disabled.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/arrow_left.png", "styles/gradient/arrow_left.png");
			type.set ("styles/gradient/arrow_left.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/arrow_left_disabled.png", "styles/gradient/arrow_left_disabled.png");
			type.set ("styles/gradient/arrow_left_disabled.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/arrow_right.png", "styles/gradient/arrow_right.png");
			type.set ("styles/gradient/arrow_right.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/arrow_right2.png", "styles/gradient/arrow_right2.png");
			type.set ("styles/gradient/arrow_right2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/arrow_right_dark.png", "styles/gradient/arrow_right_dark.png");
			type.set ("styles/gradient/arrow_right_dark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/arrow_right_disabled.png", "styles/gradient/arrow_right_disabled.png");
			type.set ("styles/gradient/arrow_right_disabled.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/arrow_up.png", "styles/gradient/arrow_up.png");
			type.set ("styles/gradient/arrow_up.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/arrow_up_disabled.png", "styles/gradient/arrow_up_disabled.png");
			type.set ("styles/gradient/arrow_up_disabled.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/circle_dark.png", "styles/gradient/circle_dark.png");
			type.set ("styles/gradient/circle_dark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/cross_dark.png", "styles/gradient/cross_dark.png");
			type.set ("styles/gradient/cross_dark.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/cross_dark_disabled.png", "styles/gradient/cross_dark_disabled.png");
			type.set ("styles/gradient/cross_dark_disabled.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/cross_light_small.png", "styles/gradient/cross_light_small.png");
			type.set ("styles/gradient/cross_light_small.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/gradient.css", "styles/gradient/gradient.css");
			type.set ("styles/gradient/gradient.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/gradient/gradient.min.css", "styles/gradient/gradient.min.css");
			type.set ("styles/gradient/gradient.min.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/gradient/gradient_mobile.css", "styles/gradient/gradient_mobile.css");
			type.set ("styles/gradient/gradient_mobile.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/gradient/gradient_mobile.min.css", "styles/gradient/gradient_mobile.min.css");
			type.set ("styles/gradient/gradient_mobile.min.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/gradient/gripper_horizontal.png", "styles/gradient/gripper_horizontal.png");
			type.set ("styles/gradient/gripper_horizontal.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/gripper_horizontal_disabled.png", "styles/gradient/gripper_horizontal_disabled.png");
			type.set ("styles/gradient/gripper_horizontal_disabled.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/gripper_vertical.png", "styles/gradient/gripper_vertical.png");
			type.set ("styles/gradient/gripper_vertical.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/gripper_vertical_disabled.png", "styles/gradient/gripper_vertical_disabled.png");
			type.set ("styles/gradient/gripper_vertical_disabled.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/hsplitter_gripper.png", "styles/gradient/hsplitter_gripper.png");
			type.set ("styles/gradient/hsplitter_gripper.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/gradient/vsplitter_gripper.png", "styles/gradient/vsplitter_gripper.png");
			type.set ("styles/gradient/vsplitter_gripper.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/accordion.css", "styles/windows/accordion.css");
			type.set ("styles/windows/accordion.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/windows/accordion.min.css", "styles/windows/accordion.min.css");
			type.set ("styles/windows/accordion.min.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/windows/button.png", "styles/windows/button.png");
			type.set ("styles/windows/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/buttons.css", "styles/windows/buttons.css");
			type.set ("styles/windows/buttons.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/windows/buttons.min.css", "styles/windows/buttons.min.css");
			type.set ("styles/windows/buttons.min.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/windows/calendar.css", "styles/windows/calendar.css");
			type.set ("styles/windows/calendar.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/windows/checkbox.png", "styles/windows/checkbox.png");
			type.set ("styles/windows/checkbox.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/container.png", "styles/windows/container.png");
			type.set ("styles/windows/container.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/glyphs/down_arrow.png", "styles/windows/glyphs/down_arrow.png");
			type.set ("styles/windows/glyphs/down_arrow.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/glyphs/hscroll_thumb_gripper_down.png", "styles/windows/glyphs/hscroll_thumb_gripper_down.png");
			type.set ("styles/windows/glyphs/hscroll_thumb_gripper_down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/glyphs/hscroll_thumb_gripper_over.png", "styles/windows/glyphs/hscroll_thumb_gripper_over.png");
			type.set ("styles/windows/glyphs/hscroll_thumb_gripper_over.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/glyphs/hscroll_thumb_gripper_up.png", "styles/windows/glyphs/hscroll_thumb_gripper_up.png");
			type.set ("styles/windows/glyphs/hscroll_thumb_gripper_up.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/glyphs/left_arrow.png", "styles/windows/glyphs/left_arrow.png");
			type.set ("styles/windows/glyphs/left_arrow.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/glyphs/right_arrow.png", "styles/windows/glyphs/right_arrow.png");
			type.set ("styles/windows/glyphs/right_arrow.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/glyphs/up_arrow.png", "styles/windows/glyphs/up_arrow.png");
			type.set ("styles/windows/glyphs/up_arrow.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/glyphs/vscroll_thumb_gripper_down.png", "styles/windows/glyphs/vscroll_thumb_gripper_down.png");
			type.set ("styles/windows/glyphs/vscroll_thumb_gripper_down.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/glyphs/vscroll_thumb_gripper_over.png", "styles/windows/glyphs/vscroll_thumb_gripper_over.png");
			type.set ("styles/windows/glyphs/vscroll_thumb_gripper_over.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/glyphs/vscroll_thumb_gripper_up.png", "styles/windows/glyphs/vscroll_thumb_gripper_up.png");
			type.set ("styles/windows/glyphs/vscroll_thumb_gripper_up.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/hprogress.png", "styles/windows/hprogress.png");
			type.set ("styles/windows/hprogress.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/hscroll.png", "styles/windows/hscroll.png");
			type.set ("styles/windows/hscroll.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/listview.css", "styles/windows/listview.css");
			type.set ("styles/windows/listview.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/windows/listview.min.css", "styles/windows/listview.min.css");
			type.set ("styles/windows/listview.min.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/windows/listview.png", "styles/windows/listview.png");
			type.set ("styles/windows/listview.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/menus.css", "styles/windows/menus.css");
			type.set ("styles/windows/menus.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/windows/optionbox.png", "styles/windows/optionbox.png");
			type.set ("styles/windows/optionbox.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/popup.png", "styles/windows/popup.png");
			type.set ("styles/windows/popup.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/popups.css", "styles/windows/popups.css");
			type.set ("styles/windows/popups.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/windows/rtf.css", "styles/windows/rtf.css");
			type.set ("styles/windows/rtf.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/windows/scrolls.css", "styles/windows/scrolls.css");
			type.set ("styles/windows/scrolls.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/windows/scrolls.min.css", "styles/windows/scrolls.min.css");
			type.set ("styles/windows/scrolls.min.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/windows/sliders.css", "styles/windows/sliders.css");
			type.set ("styles/windows/sliders.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/windows/tab.png", "styles/windows/tab.png");
			type.set ("styles/windows/tab.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/tabs.css", "styles/windows/tabs.css");
			type.set ("styles/windows/tabs.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("styles/windows/textinput.png", "styles/windows/textinput.png");
			type.set ("styles/windows/textinput.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/vprogress.png", "styles/windows/vprogress.png");
			type.set ("styles/windows/vprogress.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/vscroll.png", "styles/windows/vscroll.png");
			type.set ("styles/windows/vscroll.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("styles/windows/windows.css", "styles/windows/windows.css");
			type.set ("styles/windows/windows.css", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("fonts/Oxygen-Bold.ttf", "fonts/Oxygen-Bold.ttf");
			type.set ("fonts/Oxygen-Bold.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("fonts/Oxygen.ttf", "fonts/Oxygen.ttf");
			type.set ("fonts/Oxygen.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("img/b0.png", "img/b0.png");
			type.set ("img/b0.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/b1.png", "img/b1.png");
			type.set ("img/b1.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("img/b2.png", "img/b2.png");
			type.set ("img/b2.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("ui/form.xml", "ui/form.xml");
			type.set ("ui/form.xml", Reflect.field (AssetType, "text".toUpperCase ()));
			
			
			initialized = true;
			
		} //!initialized
		
	} //initialize
	
	
} //AssetData
