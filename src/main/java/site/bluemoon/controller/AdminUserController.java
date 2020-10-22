package site.bluemoon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.bluemoon.dto.User;
import site.bluemoon.exception.UserinfoExistsException;
import site.bluemoon.service.AdminUserService;
import site.bluemoon.service.AdminWaterparkService;
import site.bluemoon.service.UserService;

@Controller
@RequestMapping(value = "/admin")
public class AdminUserController {

	@Autowired
	private AdminUserService adminUserService;
	
	//UserList Ãâ·Â
	@RequestMapping(value = "/userList")
	public String userList(Model model) {
		model.addAttribute("userList", adminUserService.getSelectUserList());
		return "admin/user/userList";
	}
	
	@RequestMapping(value = "/userModify/{userNo}", method = RequestMethod.GET)
	public String userModify(@PathVariable int userNo, Model model) {
		model.addAttribute("user", adminUserService.getUpdateUserInfo(userNo));
		return "admin/user/userModify";
	}
}