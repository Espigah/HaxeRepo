package src.app.chat.controller;
import src.app.chat.presenter.FormPresenter;
import haxe.ui.toolkit.core.XMLController;
import haxe.ui.toolkit.resources.ResourceManager;
import openfl.events.Event;
import openfl.events.MouseEvent;
/**
 * ...
 * @author espigah
 */
class UIController extends XMLController 
{
	public var formPresenter:FormPresenter;
	public function new() 
	{
		super("ui/hello-world.xml");
		formPresenter = new FormPresenter(this);
		//var a = ResourceManager.instance.getText(xmlResourceId);
		//view.addEventListener(
		//Event.CHANGE,
		//function(e:Event) { trace(e); }
		//);
		
		
	}
	
	
}