package site.bluemoon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/admin")
public class AdminWaterparkController {

	//��news ����ҽ�
	@RequestMapping(value = "/newsList")
	public String newsList() {
		return "admin/waterpark/news/newsList";
	}

	@RequestMapping(value = "/newsInsert")
	public String newsInsert() {
		return "admin/waterpark/news/newsInsert";
	}

	@RequestMapping(value = "/newsModify")
	public String newsModify() {
		return "admin/waterpark/news/newsModify";
	}
	
	//��waterPark ����/����
	@RequestMapping(value = "/prList")
	public String prList() {
		return "admin/waterpark/pr/prList";
	}
	
	//��waterPark ���ǥ
	@RequestMapping(value = "/chargeList")
	public String chargeList() {
		return "admin/waterpark/charge/chargeList";
	}
	
	@RequestMapping(value = "/chargeInsert")
	public String chargeInsert() {
		return "admin/waterpark/charge/chargeInsert";
	}
}
