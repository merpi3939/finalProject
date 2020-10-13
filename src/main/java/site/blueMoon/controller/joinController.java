package site.blueMoon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class joinController {
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String userJoin() {
		return "bluemoon/user/user_join";
	}
}
