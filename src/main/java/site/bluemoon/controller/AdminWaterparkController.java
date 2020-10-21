package site.bluemoon.controller;

import java.util.List;

import javax.xml.ws.RequestWrapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import site.bluemoon.dto.OceanNews;
import site.bluemoon.service.AdminMemberWaterparkService;

@Controller
@RequestMapping(value = "/admin")
public class AdminWaterparkController {

	@Autowired
	private AdminMemberWaterparkService adminMemberWaterparkService;
	
	//■news 현장소식
	@RequestMapping(value = "/newsList")
	public String newsList(Model model) {
		model.addAttribute("newsList", adminMemberWaterparkService.getSelectNewsList());
		return "admin/waterpark/news/newsList";
	}
	
	@RequestMapping(value = "/newsInsert", method = RequestMethod.GET)
	public String newsInsert() {
		return "admin/waterpark/news/newsInsert";
	}
	
	@RequestMapping(value = "/newsInsert", method = RequestMethod.POST)
	public String newsInsert(@ModelAttribute OceanNews oceanNews) {
		adminMemberWaterparkService.addNews(oceanNews);
		return "redirect:/admin/newsList";
	}
	
	@RequestMapping(value = "/newsModify/{newsNo}", method = RequestMethod.GET)
	public String newsModify(@PathVariable int newsNo, Model model) {
		model.addAttribute("news", adminMemberWaterparkService.getSelectNews(newsNo));
		return "admin/waterpark/news/newsModify";
	}

	@RequestMapping(value = "/newsModify", method = RequestMethod.POST)
	public String newsModify(@ModelAttribute OceanNews oceanNews) {
		adminMemberWaterparkService.modifyNews(oceanNews);
		return "redirect:/admin/newsList";
	}
	
	@RequestMapping(value = "/newsRemove/{newsNo}")
	public String newsRemove(@PathVariable int newsNo) {
		adminMemberWaterparkService.removeNews(newsNo);
		return "redirect:/admin/newsList";
	}
	
	//■waterPark 예약/결제
	@RequestMapping(value = "/prList")
	public String prList() {
		return "admin/waterpark/pr/prList";
	}
	
	//■waterPark 요금표
	@RequestMapping(value = "/chargeList")
	public String chargeList() {
		return "admin/waterpark/charge/chargeList";
	}
	
	@RequestMapping(value = "/chargeInsert")
	public String chargeInsert() {
		return "admin/waterpark/charge/chargeInsert";
	}
}
