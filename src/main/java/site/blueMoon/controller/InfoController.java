package site.blueMoon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class InfoController {
	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public String infoMain() {
		return "bluemoon/info/info_notice";
	}
}
