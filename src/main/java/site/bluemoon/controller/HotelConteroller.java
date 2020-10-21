package site.bluemoon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.service.HotelService;

@Controller
public class HotelConteroller {
	@Autowired
	private HotelService hotelReserveService;
	@RequestMapping(value = "/hotel")
	public String Hotel(Model model) {
		model.addAttribute("categoryList", hotelReserveService.selectHotelCategoryList());
		return "bluemoon/hotel/hotel";
	}
	
	@RequestMapping(value = "hotel_single")
	public String HotelSingle(Model model, @RequestParam("hotelCategoryNo") int num) {
		model.addAttribute("hotelCategoryNo", hotelReserveService.selectHotelCategory(num));
		return "bluemoon/hotel/hotel_single";
	}
	@RequestMapping(value = "/Hoteladd", method = RequestMethod.POST)
	public String Hoteladd(@ModelAttribute("hotel") HotelReserveDTO reserve, HotelCategory category) {
		return "bluemoon/hotel/hotel_pay";
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
