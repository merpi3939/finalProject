package site.bluemoon.controller;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.service.HotelReserveService;

@Controller
public class HotelConteroller {
	@Autowired
	private HotelReserveService hotelReserveService;
	@RequestMapping(value = "/hotel", method = RequestMethod.GET)
	public String Hotel() {
		return "bluemoon/hotel/hotel";
	}
	@RequestMapping(value = "/hotel_single", method = RequestMethod.GET)
	public String HotelSingle() {
		return "bluemoon/hotel/hotel_single";
	}
	@RequestMapping(value = "/Hoteladd", method = RequestMethod.POST)
	public String Hoteladd(@ModelAttribute HotelReserveDTO reserve ,Model model) throws ParseException{
		

		hotelReserveService.addHotelReserve(reserve);
		return "bluemoon/hotel/hotel_single";
	}
	@RequestMapping(value = "/hotel_pay", method = RequestMethod.GET)
	public String HotelPay() {
		return "bluemoon/hotel/hotel_pay";
	}
	@RequestMapping(value = "/hotel_order", method = RequestMethod.GET)
	public String HotelOrder() {
		return "bluemoon/hotel/hotel_order";
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
