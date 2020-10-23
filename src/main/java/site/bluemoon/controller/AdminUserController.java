package site.bluemoon.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.bluemoon.dto.User;
import site.bluemoon.exception.UserinfoExistsException;
import site.bluemoon.exception.UserinfoNotFoundException;
import site.bluemoon.service.AdminUserService;
import site.bluemoon.service.AdminWaterparkService;
import site.bluemoon.service.UserService;

@Controller
@RequestMapping(value = "/admin")
public class AdminUserController {

	@Autowired
	private AdminUserService adminUserService;
	@Autowired
	private UserService userService;
	
	//UserList Ãâ·Â
	@RequestMapping(value = "/userList")
	public String userList(Model model) {
		model.addAttribute("userList", adminUserService.getSelectUserList());
		return "admin/user/userList";
	}
	
	@RequestMapping(value = "/deleteCheckUser", method = RequestMethod.POST)
	public String userDelete(HttpServletRequest request) throws UserinfoNotFoundException {
		String userId[]=request.getParameterValues("checkData");
		for(String userIds: userId ) {
			userService.removeUser(userIds);
		}
		return "redirect:/admin/userList";
	}
	
	@RequestMapping(value = "/userRemove/{userId}")
	public String userRemove(@PathVariable String userId) throws UserinfoNotFoundException {
		userService.removeUser(userId);
		return "redirect:/admin/userList";
	}
	
	@RequestMapping(value = "/userModify/{userNo}", method = RequestMethod.GET)
	public String userModify(@PathVariable int userNo, Model model) {
		model.addAttribute("user", adminUserService.getSelectUserId(userNo));
		return "admin/user/userModify";
	}
	
	@RequestMapping(value = "/userModify", method = RequestMethod.POST)
	public String userModify(@ModelAttribute User user) {
		System.out.println("1111111111");
		adminUserService.modifyUser(user);
		System.out.println("222222222222222");
		return "redirect:/admin/userList";
	}
}