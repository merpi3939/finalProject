package site.bluemoon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin")
public class adminHotelController {
	@RequestMapping(value = "/hotel_status", method = RequestMethod.GET)
	public String hotelStatus() {
		return "admin/hotel/hotel_status";
	}
	
	
	@RequestMapping(value = "/hotel_reservation_list")
	public String hotelReservationList(Model model ) {
		//model.addAttribute("reservationList", reservationList);
		return "admin/hotel/hotel_reservation_list";
	}
	
	@RequestMapping(value = "/hotel_reservation_update")
	public String hotelReservationUpdate(Model model) {
		return "admin/hotel/hotel_reservation_update";
	}
	
	@RequestMapping(value = "/hotel_review_list")
	public String hotelReviewList(Model model) {
		return "admin/hotel/hotel_review_list";
	}
	
	@RequestMapping(value = "/hotel_review_detail")
	public String hotelReviewDetail(Model model) {
		return "admin/hotel/hotel_review_detail";
	}
}
