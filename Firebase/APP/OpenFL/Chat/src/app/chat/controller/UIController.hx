package src.app.chat.controller;
import haxe.Timer;
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
		super("ui/form.xml");
		formPresenter = new FormPresenter(this);
		formPresenter.addEventListener(Event.COMPLETE, onForm);
		//var a = ResourceManager.instance.getText(xmlResourceId);
		//view.addEventListener(
		//Event.CHANGE,
		//function(e:Event) { trace(e); }
		//);
		
		
	}
	
	private function onForm(e:Event):Void 
	{
		view.dispatchEvent(new Event(Event.CHANGE));
	}
	
	
}