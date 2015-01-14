package src.app.chat.presenter;
import app.chat.model.FormModel;
import haxe.ui.toolkit.controls.Button;
import haxe.ui.toolkit.controls.TextInput;
import haxe.ui.toolkit.core.Component;
import haxe.ui.toolkit.core.XMLController;
import openfl.events.MouseEvent;
import src.app.chat.service.Service;
/**
 * ...
 * @author espigah
 */
class FormPresenter
{
	var xmlController:XMLController;
	var passtext:TextInput;
	var registerButton:Button;
	var loginButton:Button;
	var lognText:TextInput;
	public var model:FormModel;
	public function new(xmlController:XMLController) 
	{
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
			model.isRegister = true;
			updatemodel();
			Service.getInstance().form.action(model);
		});
		
		loginButton.addEventListener(MouseEvent.CLICK, function (event:MouseEvent)
		{
			model.isRegister = false;
			updatemodel();
			Service.getInstance().form.action(model);
		});
	}
	
	function updatemodel() 
	{
		model.pass = passtext.text;
		model.login = lognText.text;
	}
	
}