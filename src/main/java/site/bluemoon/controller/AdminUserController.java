package site.bluemoon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import site.bluemoon.service.AdminUserService;
import site.bluemoon.service.AdminWaterparkService;

@Controller
@RequestMapping("/admin")
public class AdminUserController {

	@Autowired
	private AdminUserService adminUserService;
	
	//UserList Ãâ·Â
	@RequestMapping(value = "/userList")
	public String userList(Model model) {
		model.addAttribute("userList", adminUserService.getSelectUserList());
		return "admin/user/userList";
	}
	
}
