package site.bluemoon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.service.AdminHotelService;

@Controller
@RequestMapping("/admin")
public class AdminHotelController {
	@Autowired
	private AdminHotelService adminHotelService;
	
	@RequestMapping(value = "/hotel_status", method = RequestMethod.GET)
	public String hotelStatus() {
		return "admin/hotel/hotel_status";
	}
	
	
	@RequestMapping(value = "/hotel_reservation_list", method = RequestMethod.GET)
	public String hotelReservationList(Model model) {
		model.addAttribute("reservationList", adminHotelService.selectHotelReserveList());
		return "admin/hotel/hotel_reservation_list";
	}
	
	@RequestMapping(value = "/hotel_reservation_update")
	public String hotelReservationUpdate(Model model) {
		return "admin/hotel/hotel_reservation_update";
	}
	
	@RequestMapping(value = "/hotel_reservation_detail")
	public String hotelReservationDetail(Model model) {
		return "admin/hotel/hotel_reservation_detail";
	}
	
	@RequestMapping(value = "/hotel_review_list")
	public String hotelReviewList(Model model) {
		return "admin/hotel/hotel_review_list";
	}
	
	@RequestMapping(value = "/hotel_review_detail")
	public String hotelReviewDetail(Model model) {
		return "admin/hotel/hotel_review_detail";
	}
	
	@RequestMapping(value = "/hotel_room_type")
	public String hotelRoomType(Model model) {
		return "admin/hotel/hotel_room_type";
	}
	
	@RequestMapping(value = "/hotel_room_add")
	public String hotelRoomAdd(Model model) {
		return "admin/hotel/hotel_room_add";
	}
	
	@RequestMapping(value = "/hotel_room_detail")
	public String hotelRoomDetail(Model model) {
		return "admin/hotel/hotel_room_detail";
	}
}
