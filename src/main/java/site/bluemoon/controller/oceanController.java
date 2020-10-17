package site.bluemoon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class oceanController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String waterPark() {
		return "main";
	}
	
	@RequestMapping(value = "/ocean_charge", method = RequestMethod.GET)
	public String oceanCharge() {
		return "bluemoon/waterpark/charge";
	}
	
	@RequestMapping(value = "/ocean_reservation", method = RequestMethod.GET)
	public String oceanResercation() {
		return "bluemoon/waterpark/reservation";
	}
	
	@RequestMapping(value = "/ocean_payment", method = RequestMethod.GET)
	public String oceanPayment() {
		return "bluemoon/waterpark/payment";
	}
	
}//
