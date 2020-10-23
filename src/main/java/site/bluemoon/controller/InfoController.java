package site.bluemoon.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
	public String addNotice(@RequestBody InfoBoard infoBoard, HttpSession session) {
		//User user=(User)session.getAttribute("userInfo");
		infoBoard.setInfoContent(HtmlUtils.htmlEscape(infoBoard.getInfoContent()));
		infoBoard.setInfoUserId("wkdrlftks");
		infoBoard.setInfoUserName("장길산");
		infoBoard.setInfoName("공지사항");
		infoBoard.setInfoState(1);;
		
		boardService.addInfoBoard(infoBoard);
		
		return "ok";
	}
	
	@RequestMapping(value = "/listNotice")
	@ResponseBody
	public Map<String, Object> noticeBoardList(@RequestParam(defaultValue = "1") int pageNum, 
			@RequestParam(value = "search") String search, @RequestParam(value = "keyword") String keyword) {
			
		Map<String, Object> countMap=new HashMap<String, Object>();
		
		countMap.put("infoName", "공지사항");
		countMap.put("infoState", 1);
		countMap.put("search", search);
		countMap.put("keyword", keyword);
		
		int totalBoard=boardService.findInfoBoardCount(countMap);
		int pageSize=9;
		int blockSize=5;
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		pagerMap.put("infoName", "공지사항");
		pagerMap.put("infoState", 1);
		pagerMap.put("search", search);
		pagerMap.put("keyword", keyword);
				
		Map<String, Object> returnMap=new HashMap<String, Object>();
		returnMap.put("noticeBoardList", boardService.findInfoBoardList(pagerMap));
		returnMap.put("pager", pager);
		
		return returnMap;
	}
	@RequestMapping(value = "/viewNotice/{num}", method = RequestMethod.GET)
	@ResponseBody
	public InfoBoard noticeBoardView(@PathVariable int num) {
		Map<String, Object> notice=new HashMap<String, Object>();
		notice.put("infoNo", num);
		notice.put("infoName", "공지사항");
		notice.put("infoState", 1);
		
		InfoBoard infoBoard=boardService.findInfoBoard(notice);
		infoBoard.setInfoContent(HtmlUtils.htmlUnescape(infoBoard.getInfoContent()));
		
		int count=infoBoard.getInfoCount();
		count+=1;
		infoBoard.setInfoCount(count);
		boardService.modifyInfoBoard(infoBoard);

		return infoBoard; 
	}
	
	@RequestMapping(value = "/modifyNotice",method = {RequestMethod.PUT, RequestMethod.PATCH})
	@ResponseBody
	public String noticeBoardModify(@RequestBody InfoBoard board) {
		board.setInfoContent(HtmlUtils.htmlEscape(board.getInfoContent()));
		boardService.modifyInfoBoard(board);
		return "ok";
	}
	@RequestMapping(value = "/removeNotice",method = RequestMethod.PUT)
	@ResponseBody
	public String noticeBoardRemove(@RequestBody InfoBoard board) {
		board.setInfoState(4);
		boardService.modifyInfoBoard(board);
		return "ok";
	}
}
