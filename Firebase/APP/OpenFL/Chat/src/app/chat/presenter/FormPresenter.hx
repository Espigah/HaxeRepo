package src.app.chat.presenter;

import app.events.ServiceRequestEvent;
import app.utils.Session;
import haxe.crypto.Sha256;
import haxe.ui.toolkit.controls.Button;
import haxe.ui.toolkit.controls.TextInput;
import haxe.ui.toolkit.core.XMLController;
import model.Model.FormModel;
import model.Model.UserModelData;
import openfl.events.Event;
import openfl.events.EventDispatcher;
import openfl.events.MouseEvent;
import src.app.chat.service.core.Service;
import src.app.chat.service.request.FormRequest;
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
			model = { };		
			updatemodel();				
			var sr = cast Service.getInstance().form.register(model);
			sr.addEventListener(ServiceRequestEvent.COMPLETE, onRegisterComplete);
			sr.addEventListener(ServiceRequestEvent.ERROR, onRegisterError);
		});
		
		loginButton.addEventListener(MouseEvent.CLICK, function (event:MouseEvent)
		{
			model = { };			
			updatemodel();			
			var sr = cast Service.getInstance().form.enter(model);
			sr.addEventListener(ServiceRequestEvent.COMPLETE, onEnterComplete);
			sr.addEventListener(ServiceRequestEvent.ERROR, onEnterError);
		});
	}
	
	private function onRegisterError(e:ServiceRequestEvent):Void 
	{
		trace(":onRegisterError");
	}
	
	private function onEnterError(e:ServiceRequestEvent):Void 
	{
		trace(":onEnterError");
	}
	
	function onRegisterComplete(e:ServiceRequestEvent) 
	{
		e.target.removeEventListener(ServiceRequestEvent.COMPLETE, onEnterComplete);
		//dispatchEvent(e);
		loginButton.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
	}
	
	function onEnterComplete(e:ServiceRequestEvent) 
	{
		var formRequest:FormRequest = cast e.serviceRequest;
		formRequest.removeEventListener(ServiceRequestEvent.COMPLETE, onEnterComplete);
		Session.player = formRequest.result;		
		dispatchEvent(e);
	}
	
	function updatemodel() 
	{
		model.pass = Sha256.encode(passtext.text);
		model.login = lognText.text;
		model.uid = Sha256.encode(lognText.text+model.pass);
	}
	
}