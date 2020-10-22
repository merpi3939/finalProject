package site.bluemoon.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.HtmlUtils;

import site.bluemoon.dto.InfoBoard;
import site.bluemoon.service.BoardService;
import site.bluemoon.util.Pager;

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
		
		for(int i=1; i<=10; i++) {
		infoBoard.setInfoTitle("테스트-"+i);
		infoBoard.setInfoContent("테스트-"+i);
		infoBoard.setInfoName("공지사항");
		infoBoard.setInfoState(1);
		boardService.addInfoBoard(infoBoard);
		}
		return "ok";
	}
	
	@RequestMapping(value = "/listNotice")
	@ResponseBody
	public Map<String, Object> noticeBoardList(@RequestParam(defaultValue = "1") int pageNum) {
			//@RequestParam(value = "search") String search, @RequestParam(value = "keyword") String keyword) {
		
		Map<String, Object> countMap=new HashMap<String, Object>();
		
		countMap.put("infoName", "공지사항");
		countMap.put("infoState", 1);
		countMap.put("search", "");
		countMap.put("keyword", "");
		
		int totalBoard=boardService.findInfoBoardCount(countMap);
		int pageSize=10;
		int blockSize=5;
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		Map<String, Object> returnMap=new HashMap<String, Object>();
		returnMap.put("noticeBoardList", boardService.findInfoBoardList(pagerMap));
		returnMap.put("endRow", pager.getEndRow());
		
		return returnMap;
	}
}
