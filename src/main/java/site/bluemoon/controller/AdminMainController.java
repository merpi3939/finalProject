package site.bluemoon.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminMainController {
	
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
