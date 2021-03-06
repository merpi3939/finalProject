package site.bluemoon.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.bluemoon.dto.AdminOceanNews;
import site.bluemoon.service.AdminBoardService;
import site.bluemoon.service.AdminHotelService;
import site.bluemoon.service.AdminUserService;

@Controller
public class AdminHomeController {
	
	@Autowired
	private AdminUserService adminUserService;
	
	@Autowired
	private AdminBoardService adminBoardService;
	
	@Autowired
	private AdminHotelService adminHotelService;
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String adminHome(@ModelAttribute AdminOceanNews adminOceanNews, Model model) {
		model.addAttribute("joinQty", adminUserService.getSelectJoinQty());
		model.addAttribute("newQna", adminBoardService.selectNewQna());
		model.addAttribute("newReservation", adminHotelService.selectNewReservation());
		model.addAttribute("reservationList", adminHotelService.selectHotelReserveList());
		return "admin";
	}
	
	@RequestMapping(value = "/admin/logout", method = RequestMethod.GET)
	public String adminLogout(HttpSession session) {
		session.removeAttribute("userInfo");
		return "redirect:/admin";
	}

	@RequestMapping(value = "/admin/login") 
	public String adminLogin() {
		return "redirect:/login";
	}
	
}
