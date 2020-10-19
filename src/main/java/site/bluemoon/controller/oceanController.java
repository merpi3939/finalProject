package site.bluemoon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.bluemoon.dto.OceanReservationDTO;
import site.bluemoon.service.OceanService;

@Controller
public class oceanController {
	@Autowired
	private OceanService oceanService;
	
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

	@RequestMapping(value = "/addOcean", method = RequestMethod.POST)
	public String addOcean(@ModelAttribute OceanReservationDTO oceanReservation, Model model) {
		OceanService.addOceanReservation(oceanReservation);
		return "bluemoon/waterpark/reservation";
	}
	
	@RequestMapping(value = "/ocean_payment", method = RequestMethod.GET)
	public String oceanPayment() {
		return "bluemoon/waterpark/payment";
	}
	
	//어트랙션
	@RequestMapping(value = "/attraction1", method = RequestMethod.GET)
	public String oceanAttracion1() {
		return "bluemoon/waterpark/attraction1_list";
	}
	
	//이벤트
	@RequestMapping(value = "/event2", method = RequestMethod.GET)
	public String oceanEvent2() {
		return "bluemoon/waterpark/event2_detail";
	}
}//
