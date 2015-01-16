package src.app.chat.presenter;
import model.FormModel;
import haxe.ui.toolkit.controls.Button;
import haxe.ui.toolkit.controls.TextInput;
import haxe.ui.toolkit.core.Component;
import haxe.ui.toolkit.core.PopupManager;
import haxe.ui.toolkit.core.XMLController;
import openfl.events.MouseEvent;
import src.app.chat.service.Service;
import src.app.chat.service.ServiceRequest;
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
			model = new FormModel();
			model.isRegister = true;
			updatemodel();		
			Service.getInstance().form.execute(model).callback(onRegister);
			
		});
		
		loginButton.addEventListener(MouseEvent.CLICK, function (event:MouseEvent)
		{
			model = new FormModel();
			model.isRegister = false;
			updatemodel();
			Service.getInstance().form.execute(model).callback(onLogin);
		});
	}
	
	function onRegister(serviceRequest:ServiceRequest) 
	{
		if (serviceRequest.dto.error != "")
		{
			PopupManager.instance.showSimple(serviceRequest.dto.error, "Error" );
		}
	}
	
	function onLogin(serviceRequest:ServiceRequest) 
	{
		if (serviceRequest.dto.error != "")
		{
			PopupManager.instance.showSimple(serviceRequest.dto.error, "Error" );
		}
		else
		{
			PopupManager.instance.showSimple(serviceRequest.dto.result, "Result" );
		}
		
	}
	
	function updatemodel() 
	{
		model.data.pass = passtext.text;
		model.data.login = lognText.text;
	}
	
}