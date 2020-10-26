package site.bluemoon.controller;

import java.util.HashMap;
import java.util.List;
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
import site.bluemoon.dto.User;
import site.bluemoon.dto.qnaReply;
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
	@RequestMapping(value = "//infoQna", method = RequestMethod.GET)
	public String infoQna() {
		return "bluemoon/info/info_qna";
	}
	//공지사항
	@RequestMapping(value = "/addNotice", method = RequestMethod.POST)
	@ResponseBody
	public String addNotice(@RequestBody InfoBoard infoBoard, HttpSession session) {
		User user=(User)session.getAttribute("userInfo");
		infoBoard.setInfoContent(HtmlUtils.htmlEscape(infoBoard.getInfoContent()));
		infoBoard.setInfoUserId(user.getUserId());
		infoBoard.setInfoUserName(user.getUserName());
		infoBoard.setInfoName("공지사항");
		infoBoard.setInfoRemove(1);
		
		boardService.addInfoBoard(infoBoard);
		
		return "ok";
	}
	//공지사항 리스트
	@RequestMapping(value = "/listNotice")
	@ResponseBody
	public Map<String, Object> noticeBoardList(@RequestParam(defaultValue = "1") int pageNum, 
			@RequestParam(value = "search") String search, @RequestParam(value = "keyword") String keyword) {
			
		Map<String, Object> countMap=new HashMap<String, Object>();
		
		countMap.put("infoName", "공지사항");
		countMap.put("infoRemove", 1);
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
		pagerMap.put("infoRemove", 1);
		pagerMap.put("search", search);
		pagerMap.put("keyword", keyword);
				
		Map<String, Object> returnMap=new HashMap<String, Object>();
		returnMap.put("noticeBoardList", boardService.findInfoBoardList(pagerMap));
		returnMap.put("pager", pager);
		
		return returnMap;
	}
	//공지사항 글보기
	@RequestMapping(value = "/viewNotice/{num}", method = RequestMethod.GET)
	@ResponseBody
	public InfoBoard noticeBoardView(@PathVariable int num) {
		Map<String, Object> notice=new HashMap<String, Object>();
		notice.put("infoNo", num);
		notice.put("infoName", "공지사항");
		notice.put("infoRemove", 1);
		
		InfoBoard infoBoard=boardService.findInfoBoard(notice);
		infoBoard.setInfoContent(HtmlUtils.htmlUnescape(infoBoard.getInfoContent()));
		
		int count=infoBoard.getInfoCount();
		count+=1;
		infoBoard.setInfoCount(count);
		
		boardService.modifyInfoBoard(infoBoard);

		return infoBoard; 
	}
	//공지사항 수정
	@RequestMapping(value = "/modifyNotice",method = {RequestMethod.PUT, RequestMethod.PATCH})
	@ResponseBody
	public String noticeBoardModify(@RequestBody InfoBoard board) {
		board.setInfoContent(HtmlUtils.htmlEscape(board.getInfoContent()));
		boardService.modifyInfoBoard(board);
		return "ok";
	}
	//공지사항 삭제
	@RequestMapping(value = "/removeNotice",method = RequestMethod.PUT)
	@ResponseBody
	public String noticeBoardRemove(@RequestBody InfoBoard board) {
		board.setInfoRemove(4);
		boardService.modifyInfoBoard(board);
		return "ok";
	}
	
	//QnA 게시판
	@RequestMapping(value = "/addQna", method = RequestMethod.POST)
	@ResponseBody
	public String addqna(@RequestBody InfoBoard infoBoard, HttpSession session) {
		User user=(User)session.getAttribute("userInfo");
		infoBoard.setInfoContent(HtmlUtils.htmlEscape(infoBoard.getInfoContent()));
		infoBoard.setInfoUserId(user.getUserId());
		infoBoard.setInfoUserName(user.getUserName());
		infoBoard.setInfoName("QNA");
		infoBoard.setInfoRemove(1);;
		
		boardService.addInfoBoard(infoBoard);
		
		return "ok";
	}
	//qna리스트
	@RequestMapping(value = "/listQna")
	@ResponseBody
	public Map<String, Object> qnaBoardList(@RequestParam(defaultValue = "1") int pageNum, 
			@RequestParam(value = "search") String search, @RequestParam(value = "keyword") String keyword) {
			
		Map<String, Object> countMap=new HashMap<String, Object>();
		
		countMap.put("infoName", "QNA");
		countMap.put("infoRemove", 1);
		countMap.put("search", search);
		countMap.put("keyword", keyword);
		
		int totalBoard=boardService.findInfoBoardCount(countMap);
		int pageSize=9;
		int blockSize=5;
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		pagerMap.put("infoName", "QNA");
		pagerMap.put("infoRemove", 1);
		pagerMap.put("search", search);
		pagerMap.put("keyword", keyword);
				
		Map<String, Object> returnMap=new HashMap<String, Object>();
		returnMap.put("noticeBoardList", boardService.findInfoBoardList(pagerMap));
		returnMap.put("pager", pager);
		return returnMap;
	}
	//qna글 보기
	@RequestMapping(value = "/viewQna/{num}", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> qnaBoardView(@PathVariable int num) {
		Map<String, Object> qna=new HashMap<String, Object>();
		qna.put("infoNo", num);
		qna.put("infoName", "QNA");
		qna.put("infoRemove", 1);
		
		InfoBoard infoBoard=boardService.findInfoBoard(qna);
		infoBoard.setInfoContent(HtmlUtils.htmlUnescape(infoBoard.getInfoContent()));
		
		Map<String, Object> qnaReplySet=new HashMap<String, Object>();
		qnaReplySet.putIfAbsent("qnaBdno", num);
		qnaReplySet.putIfAbsent("qnaInfoName", "QNA");
		
		List<qnaReply>qnaReply=boardService.findQnaList(qnaReplySet);
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("qna", infoBoard);
		map.put("qnaReply", qnaReply);
		return map; 
	}
	//qna 수정
	@RequestMapping(value = "/modifyQna",method = {RequestMethod.PUT, RequestMethod.PATCH})
	@ResponseBody
	public String qnaBoardModify(@RequestBody InfoBoard board) {
		board.setInfoContent(HtmlUtils.htmlEscape(board.getInfoContent()));
		boardService.modifyInfoBoard(board);
		return "ok";
	}
	//qna 삭제
	@RequestMapping(value = "/removeQna",method = RequestMethod.PUT)
	@ResponseBody
	public String qnaBoardRemove(@RequestBody InfoBoard board) {
		board.setInfoRemove(4);
		boardService.modifyInfoBoard(board);
		return "ok";
	}
	
	//qna 댓글 추가
	@RequestMapping(value = "/addQnaReply", method = RequestMethod.POST)
	@ResponseBody
	public String addQnaReply(@RequestBody qnaReply qnaReply, HttpSession session) {
		qnaReply.setQnaRpCont(HtmlUtils.htmlEscape(qnaReply.getQnaRpCont()));
		qnaReply.setQnaInfoName("QNA");
		boardService.addQnaReply(qnaReply);
		
		return "ok";
	}
	
	@RequestMapping(value = "/qnaReplyRemove/{num}",method = RequestMethod.DELETE)
	@ResponseBody
	public String restBoardRemove(@PathVariable int num) {
		boardService.removeQnaReply(num);
		return "ok";
	}
}
