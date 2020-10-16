package site.bluemoon.controller;

import java.util.Arrays;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.bluemoon.dto.User;
import site.bluemoon.service.UserService;

@Controller
public class userController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String userLogin() {
		return "bluemoon/user/user_login";
	}
	
	@RequestMapping(value = "/idFind", method = RequestMethod.GET)
	public String idFind() {
		return "bluemoon/user/user_idfind";
	}

	@RequestMapping(value = "/passwdFind", method = RequestMethod.GET)
	public String passwdFind() {
		return "bluemoon/user/user_passwdfind";
	}
	
	@RequestMapping(value = "/jointerms", method = RequestMethod.GET)
	public String userJoin() {
		return "bluemoon/user/user_join_terms";
	}
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String userJoin(@ModelAttribute User user) {
		return "bluemoon/user/user_join";
	}
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String userJoin(@Valid @ModelAttribute User user, Errors errors) {
		if(errors.hasErrors()) {
			return "bluemoon/user/user_join";
		}
		
		String userPhone=user.getPhone1()+"-"+user.getPhone2()+"-"+user.getPhone3();
		user.setUserPhone(userPhone);
		
		userService.addUser(user);
		
		return "bluemoon/waterpark/main";
	}
	
	@ModelAttribute("sexList")
	public List<String> sexList() {
		return Arrays.asList("선택","남자","여자");
	}
	@ModelAttribute("phone1List")
	public List<String> phone1List() {
		return Arrays.asList("010","011","012","016","017","018","019");
	}

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String userMyPage() {
		return "bluemoon/user/user_reservation";
	}
}
