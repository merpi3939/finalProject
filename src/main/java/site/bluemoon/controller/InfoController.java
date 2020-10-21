package site.bluemoon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.HtmlUtils;

import site.bluemoon.dto.InfoBoard;
import site.bluemoon.service.BoardService;

@Controller
public class InfoController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public String infoMain() {
		return "bluemoon/info/info_notice";
	}
	
	@RequestMapping(value = "/addNotice", method = RequestMethod.POST)
	@ResponseBody
	public String addNotice(@RequestBody InfoBoard infoBoard) {
		
		infoBoard.setInfoContent(HtmlUtils.htmlEscape(infoBoard.getInfoContent()));
		
		boardService.addInfoBoard(infoBoard);
		return "ok";
	}
}
