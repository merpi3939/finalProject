package site.bluemoon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HotelConteroller {
	@RequestMapping(value = "/hotel", method = RequestMethod.GET)
	public String Hotel() {
		return "bluemoon/hotel/hotel";
	}
	@RequestMapping(value = "/hotel_single", method = RequestMethod.GET)
	public String HotelSingle() {
		return "bluemoon/hotel/hotel_single";
	}
	@RequestMapping(value = "/hotel_pay", method = RequestMethod.GET)
	public String HotelPay() {
		return "bluemoon/hotel/hotel_pay";
	}
	@RequestMapping(value = "/hotel_event", method = RequestMethod.GET)
	public String HotelEvent() {
		return "bluemoon/hotel/hotel_event";
	}
	@RequestMapping(value = "/hotel_service", method = RequestMethod.GET)
	public String HotelService() {
		return "bluemoon/hotel/hotel_service";
	}
	
	

}
