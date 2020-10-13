package site.blueMoon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class userController {
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
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String userJoin() {
		return "bluemoon/user/user_join";
	}

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String userMyPage() {
		return "bluemoon/user/user_reservation";
	}
}
