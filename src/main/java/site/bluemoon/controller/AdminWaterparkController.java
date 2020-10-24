package site.bluemoon.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.HtmlUtils;

import site.bluemoon.dto.AdminOceanNews;
import site.bluemoon.dto.OceanChargeDTO;
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
		model.addAttribute("newsUserList", adminWaterparkService.getSelectNewsList() );
		return "admin/waterpark/news/newsList";
	}
	
	@RequestMapping(value = "/newsInsert", method = RequestMethod.GET)
	public String newsInsert() {
		return "admin/waterpark/news/newsInsert";
	}
	
	@RequestMapping(value = "/newsInsert", method = RequestMethod.POST)
	public String newsInsert(@ModelAttribute OceanNews oceanNews) {
		oceanNews.setNewsCont(HtmlUtils.htmlEscape(oceanNews.getNewsCont()));
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
	
	@RequestMapping(value = "/deleteCheckNews", method = RequestMethod.POST)
	public String deleteCheckNews(HttpServletRequest request) {
		String newsNo[]=request.getParameterValues("checkData");
		for(String newsNos: newsNo) {
			adminWaterparkService.removeNews(Integer.parseInt(newsNos));
		}
		return "redirect:/admin/newsList";
	}

	//■waterPark 요금표
	@RequestMapping(value = "/chargeList")
	public String chargeList(Model model) {
		model.addAttribute("chargeList", adminWaterparkService.getSelectChargeList());
		return "admin/waterpark/charge/chargeList";
	}
	
	@RequestMapping(value = "/chargeInsert", method = RequestMethod.GET)
	public String chargeInsert() {
		return "admin/waterpark/charge/chargeInsert";
	}
	
	@RequestMapping(value = "/chargeInsert", method = RequestMethod.POST)
	public String chargeInsert(@ModelAttribute OceanChargeDTO oceanChargeDTO) {
		adminWaterparkService.addCharge(oceanChargeDTO);
		return "redirect:/admin/chargeList";
	}
	
	@RequestMapping(value = "/chargeModify/{cgNo}", method = RequestMethod.GET)
	public String chargeModify(@PathVariable int cgNo, Model model) {
		model.addAttribute("charge", adminWaterparkService.getSelectCharge(cgNo));
		return "admin/waterpark/charge/chargeModify";
	}
	
	@RequestMapping(value = "/chargeModify", method = RequestMethod.POST)
	public String chargeModify(@ModelAttribute OceanChargeDTO oceanChargeDTO) {
		adminWaterparkService.modifyCharge(oceanChargeDTO);
		return "redirect:/admin/chargeList";
	}

	@RequestMapping(value = "/chargeRemove/{cgNo}")
	public String chargeModify(@PathVariable int cgNo) {
		adminWaterparkService.removeCharge(cgNo);
		return "redirect:/admin/chargeList";
	}
	
	//■waterPark 예약/결제
	@RequestMapping(value = "/prList")
	public String prList(Model model) {
		model.addAttribute("prList", adminWaterparkService.getSelectReservationList());
		return "admin/waterpark/pr/prList";
	}
	
	@RequestMapping(value = "/prRemove/{rsNo}")
	public String prDelete(@PathVariable int rsNo) {
		adminWaterparkService.removeReservation(rsNo);
		return "redirect:/admin/prList";
	}
	
	@RequestMapping(value = "/prModify/{rsNo}", method = RequestMethod.GET)
	public String prModify(@PathVariable int rsNo, Model model) {
		model.addAttribute("chargeNameList", adminWaterparkService.getSelectChargeList());
		model.addAttribute("pr", adminWaterparkService.getSelectReservation(rsNo));
		return "admin/waterpark/pr/prModify";
	}
	
//	@RequestMapping(value = "/prModify/{rsNo}", method = RequestMethod.GET)
	//public String prModify(@PathVariable int rsNo, Model model) {
}
