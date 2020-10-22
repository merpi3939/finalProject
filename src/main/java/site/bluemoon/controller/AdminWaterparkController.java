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
import site.bluemoon.service.AdminWaterparkService;

@Controller
@RequestMapping(value = "/admin")
public class AdminWaterparkController {

	@Autowired
	private AdminWaterparkService adminWaterparkService;
	
	//■news 현장소식
	@RequestMapping(value = "/newsList")
	public String newsList(Model model) {
		model.addAttribute("newsList", adminWaterparkService.getSelectNewsList());
		return "admin/waterpark/news/newsList";
	}
	
	@RequestMapping(value = "/newsInsert", method = RequestMethod.GET)
	public String newsInsert() {
		return "admin/waterpark/news/newsInsert";
	}
	
	@RequestMapping(value = "/newsInsert", method = RequestMethod.POST)
	public String newsInsert(@ModelAttribute OceanNews oceanNews) {
		adminWaterparkService.addNews(oceanNews);
		return "redirect:/admin/newsList";
	}
	
	@RequestMapping(value = "/newsModify/{newsNo}", method = RequestMethod.GET)
	public String newsModify(@PathVariable int newsNo, Model model) {
		model.addAttribute("news", adminWaterparkService.getSelectNews(newsNo));
		return "admin/waterpark/news/newsModify";
	}

	@RequestMapping(value = "/newsModify", method = RequestMethod.POST)
	public String newsModify(@ModelAttribute OceanNews oceanNews) {
		adminWaterparkService.modifyNews(oceanNews);
		return "redirect:/admin/newsList";
	}
	
	@RequestMapping(value = "/newsRemove/{newsNo}")
	public String newsRemove(@PathVariable int newsNo) {
		adminWaterparkService.removeNews(newsNo);
		return "redirect:/admin/newsList";
	}
	@RequestMapping(value = "/newsCheckRemove", method = RequestMethod.POST)
	public String newsCheckRemove(@RequestParam("checkData") List<Integer> newsNos) {
		for(Integer newsNo: newsNos) {
			adminWaterparkService.removeCheckNews(newsNo);
		}
		return "redirect:/admin/newsList";
	}

	//■waterPark 예약/결제
	@RequestMapping(value = "/prList")
	public String prList(Model model) {
		model.addAttribute("prList", adminWaterparkService.getSelectReservationList());
		return "admin/waterpark/pr/prList";
	}
	
	//■waterPark 요금표
	@RequestMapping(value = "/chargeList")
	public String chargeList(Model model) {
		model.addAttribute("chargeList", adminWaterparkService.getSelectChargeList());
		return "admin/waterpark/charge/chargeList";
	}
	
	@RequestMapping(value = "/chargeInsert")
	public String chargeInsert() {
		return "admin/waterpark/charge/chargeInsert";
	}
}
