package site.bluemoon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminMemberController {

	//memberList Ãâ·Â
	@RequestMapping(value = "/memberList")
	public String memberList(Model model) {
		return "admin/member/memberList";
	}
	
	//memberInsert
	@RequestMapping(value = "/memberInsert")
	public String memberInsert() {
		return "admin/member/memberInsert";
	}
	
	//memberPrint
	@RequestMapping(value = "/memberModify")
	public String memberModify() {
		return "admin/member/memberModify";
	}
	
	//memberPrint
	@RequestMapping(value = "/memberPrint")
	public String memberPrint() {
		return "admin/member/memberPrint";
	}
	
	
}
