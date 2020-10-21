package site.bluemoon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/admin")
public class AdminBoardController {
	
	@RequestMapping(value = "/info_list")
	public String infoList() {
		return "admin/board/info_list";
	}
	
	@RequestMapping(value = "/info_write")
	public String infoWrite() {
		return "admin/board/info_write";
	}

}
