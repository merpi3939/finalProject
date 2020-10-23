package site.bluemoon.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.bluemoon.dto.InfoBoard;
import site.bluemoon.service.AdminBoardService;

@Controller
@RequestMapping(value = "/admin")
public class AdminBoardController {
	@Autowired
	private AdminBoardService adminBoardService;
	
	@RequestMapping(value = "/info_list",method = RequestMethod.GET)
	public String infoList(Model model) {
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("infoBoard", new InfoBoard());
		model.addAttribute("infoList", adminBoardService.selectInfoList(map));
		return "admin/board/info_list";
	}
	
	@RequestMapping(value = "/info_list",method = RequestMethod.POST)
	public String infoList(@ModelAttribute InfoBoard infoBoard,String keyword, String search, String start, String end, Model model) {
		if(search!=null && !search.equals("") && keyword!=null && !keyword.equals("")) {
			if(search.equals("infoTitle")) {
				infoBoard.setInfoTitle(keyword);
			} else if(search.equals("infoContent")){
				infoBoard.setInfoContent(keyword);
			}
		}
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("infoBoard", infoBoard);
		
		model.addAttribute("infoList", adminBoardService.selectInfoList(map));
		return "admin/board/info_list";
	}
	
	@RequestMapping(value = "/info_write")
	public String infoWrite() {
		return "admin/board/info_write";
	}
	
	@RequestMapping(value = "/info_detail")
	public String infoDetail(int infoNo, Model model) {
		
		model.addAttribute("info", adminBoardService.selectInfo(infoNo));
		return "admin/board/info_detail";
	}
	
	@RequestMapping(value = "/info_modify",method = RequestMethod.GET)
	public String infoModify(int infoNo,Model model) {
		
		model.addAttribute("info", adminBoardService.selectInfo(infoNo));
		return "admin/board/info_modify";
	}
	
	@RequestMapping(value = "/info_modify",method = RequestMethod.POST)
	public String infoModify(@ModelAttribute InfoBoard infoBoard, Model model) {
		adminBoardService.updateInfo(infoBoard);
		model.addAttribute("info", adminBoardService.selectInfo(infoBoard.getInfoNo()));
		return "redirect:/admin/info_detail?infoNo="+infoBoard.getInfoNo();
	}
	
	@RequestMapping(value = "/info_delete" , method = RequestMethod.GET)
	public String infoDelete( int infoNo) {
		InfoBoard infoBoard= new InfoBoard();
		infoBoard.setInfoNo(infoNo);
		infoBoard.setInfoState(4);
		adminBoardService.updateInfoState(infoBoard);
		return "redirect:/admin/info_list";
	}
	
}
