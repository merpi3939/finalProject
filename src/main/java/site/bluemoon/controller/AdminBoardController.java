package site.bluemoon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.bluemoon.service.AdminBoardService;

@Controller
@RequestMapping(value = "/admin")
public class AdminBoardController {
	@Autowired
	private AdminBoardService adminBoardService;
	
	@RequestMapping(value = "/info_list",method = RequestMethod.GET)
	public String infoList(Model model) {
		model.addAttribute("infoList", adminBoardService.selectInfoList());
		return "admin/board/info_list";
	}
	
	@RequestMapping(value = "/info_write")
	public String infoWrite() {
		return "admin/board/info_write";
	}
	
	@RequestMapping(value = "/info_detail")
	public String infoDetail() {
		return "admin/board/info_detail";
	}

}
