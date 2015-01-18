package src.app.chat.presenter;
import app.chat.model.FormModel;
import haxe.ui.toolkit.controls.Button;
import haxe.ui.toolkit.controls.TextInput;
import haxe.ui.toolkit.core.Component;
import haxe.ui.toolkit.core.XMLController;
import openfl.events.Event;
import openfl.events.EventDispatcher;
import openfl.events.MouseEvent;
import src.app.chat.service.Service;
import src.app.chat.service.ServiceRequest;
/**
 * ...
 * @author espigah
 */
class FormPresenter extends EventDispatcher
{
	var xmlController:XMLController;
	var passtext:TextInput;
	var registerButton:Button;
	var loginButton:Button;
	var lognText:TextInput;
	public var model:FormModel;
	public function new(xmlController:XMLController) 
	{
		super();
		this.xmlController = xmlController;	
		attachElements();
		attachEvents();
	}
	
	function attachElements() 
	{
		registerButton = cast  xmlController.getComponent("bt_register");
		loginButton = cast xmlController.getComponent("bt_login");
		passtext = cast  xmlController.getComponent("senha");
		lognText = cast  xmlController.getComponent("login");
	}
	
	function attachEvents() 
	{
		registerButton.addEventListener(MouseEvent.CLICK, function (event:MouseEvent)
		{
			model = new FormModel();
			model.isRegister = true;
			updatemodel();		
			var sr = Service.getInstance().form.execute(model);
			sr.addEventListener(Event.COMPLETE, onRegisterComplete);
		});
		
		loginButton.addEventListener(MouseEvent.CLICK, function (event:MouseEvent)
		{
			model = new FormModel();
			model.isRegister = false;
			updatemodel();
			var sr = Service.getInstance().form.execute(model);
			sr.addEventListener(Event.COMPLETE, onEnterComplete);
		});
	}
	
	function onRegisterComplete(e:Event) 
	{
		e.target.removeEventListener(Event.COMPLETE, onEnterComplete);
		dispatchEvent(e);
	}
	
	function onEnterComplete(e:Event) 
	{
		e.target.removeEventListener(Event.COMPLETE, onEnterComplete);
		dispatchEvent(e);
	}
	
	function updatemodel() 
	{
		model.pass = passtext.text;
		model.login = lognText.text;
	}
	
}