package site.bluemoon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import site.bluemoon.dto.OceanReservationDTO;
import site.bluemoon.service.OceanService;

@Controller
public class oceanController {
	@Autowired
	private OceanService oceanService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String waterPark(Model model) {
		model.addAttribute("newsList", oceanService.getSelectNewsList());
		return "main";
	}
	
	//생생뉴스
	/*
	@RequestMapping(value = "/news")
	public String newsList(Model model) {
		model.addAttribute("newsList", oceanService.getSelectNewsList());
		return "main";
	}
	*/
	/*
	@RequestMapping(value = "/ocean_charge", method = RequestMethod.GET)
	public String oceanCharge() {
		return "bluemoon/waterpark/charge";
	}
	
	@RequestMapping(value = "/ocean_reservation", method = RequestMethod.GET)
	public String oceanResercation() {
		return "bluemoon/waterpark/reservation";
	}
	*/
	
	//요금표
	@RequestMapping(value = "/ocean_charge")
	public String oceanReservation(Model model) {
		model.addAttribute("oceanChaereList", oceanService.getOceanChargeList());
		return "bluemoon/waterpark/charge";
	}
	
	@RequestMapping(value = "/reservation")
	public String oceanChargeList(@RequestParam("chargeList") int cgNo, Model model) {
		model.addAttribute("chargeList", oceanService.getOceanCharge(cgNo));
		return "bluemoon/waterpark/reservation";
	}
	
	//예약 추가	
	@RequestMapping(value = "/addOcean", method = RequestMethod.GET)
	public String addOcean() {
		return "bluemoon/waterpark/reservation";
	}
	
	@RequestMapping(value = "/addOcean", method = RequestMethod.POST)
	public String addOcean(@ModelAttribute("addOcean") OceanReservationDTO oceanReservation, Model model) {
		oceanService.addOceanReservation(oceanReservation);
		return"redirect:/payment_list";
	}	
	
	//결제 페이지
	@RequestMapping(value = "/payment_list")
	public String oceanPayment(Model model) {
		model.addAttribute("oceanPaymentList", oceanService.getOceanPaymentList());
		return "bluemoon/waterpark/payment_list";
	}
	
	//결제 확인
	@RequestMapping(value = "/payment")
	public String oceanPaymentList(@RequestParam("paymentList") int rsNo, Model model) {
		model.addAttribute("paymentList", oceanService.getOceanPayment(rsNo));
		return "bluemoon/waterpark/payment";
	}
	
	//환불
	@RequestMapping(value = "/updateOcean", method = RequestMethod.GET)
	public String updateOcean() {
		return "bluemoon/waterpark/updatePayment";
	}
	
	@RequestMapping(value = "/updateOcean", method = RequestMethod.POST)
	public String updateOcean(@ModelAttribute("updateOcean") OceanReservationDTO oceanUpdate, Model model) {
		oceanService.getOceanUpdate(oceanUpdate);
		return"redirect:/payment_list";
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
