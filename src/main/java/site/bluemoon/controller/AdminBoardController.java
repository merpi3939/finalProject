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
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import site.bluemoon.dto.InfoBoard;
import site.bluemoon.service.AdminBoardService;
import site.bluemoon.service.BoardService;
import site.bluemoon.service.FileService;

@Controller
@RequestMapping(value = "/admin")
public class AdminBoardController {
	@Autowired
	private AdminBoardService adminBoardService;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private WebApplicationContext context;
	
	@Autowired
	private FileService fileService;
	
	@RequestMapping(value = "/info_list",method = RequestMethod.GET)
	public String infoList(Model model) {
		Map<String, Object> map=new HashMap<String, Object>();
		InfoBoard infoBoard=new InfoBoard();
		infoBoard.setInfoRemove(1);
		map.put("infoBoard", infoBoard);
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
		
		if(infoBoard.getInfoState()==4) {
			infoBoard.setInfoRemove(4);
			infoBoard.setInfoState(0);
		} else {
			infoBoard.setInfoRemove(1);
		}
		map.put("infoBoard", infoBoard);
		
		model.addAttribute("infoList", adminBoardService.selectInfoList(map));
		return "admin/board/info_list";
	}
	
	@RequestMapping(value = "/info_write",method = RequestMethod.GET)
	public String infoWrite() {
		return "admin/board/info_write";
	}
	
	@RequestMapping(value = "/info_write", method = RequestMethod.POST)
	public String infoWrite(InfoBoard infoBoard, MultipartHttpServletRequest mRequest, Model model) {
		String uploadDir=context.getServletContext().getRealPath("/resources/bluemoon/images/board_img/");
		Map<String, Object> result= fileService.fileUpload(mRequest,uploadDir, "infoImg");
		
		if((boolean)result.get("result")) {
			if((String)result.get("infoImg1")!=null && !((String)result.get("infoImg1")).equals("")) 
				infoBoard.setInfoImg((String)result.get("infoImg1"));
			System.out.println("success");
		} else {
			System.out.println("fail");
		}
		
		boardService.addInfoBoard(infoBoard);
		return "redirect:/admin/info_list";
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
	public String infoModify(@ModelAttribute InfoBoard infoBoard, MultipartHttpServletRequest mRequest, Model model) {
		String uploadDir=context.getServletContext().getRealPath("/resources/bluemoon/images/board_img/");
		Map<String, Object> result= fileService.fileUpload(mRequest,uploadDir, "infoImg");
		
		if((boolean)result.get("result")) {
			if((String)result.get("infoImg1")!=null && !((String)result.get("infoImg1")).equals("")) 
				infoBoard.setInfoImg((String)result.get("infoImg1"));
			System.out.println("success");
		} else {
			System.out.println("fail");
		}
		
		adminBoardService.updateInfo(infoBoard);
		model.addAttribute("info", adminBoardService.selectInfo(infoBoard.getInfoNo()));
		return "redirect:/admin/info_detail?infoNo="+infoBoard.getInfoNo();
	}
	
	@RequestMapping(value = "/info_delete" , method = RequestMethod.GET)
	public String infoDelete( int infoNo) {
		InfoBoard infoBoard= new InfoBoard();
		infoBoard.setInfoNo(infoNo);
		infoBoard.setInfoRemove(4);
		adminBoardService.updateInfo(infoBoard);
		return "redirect:/admin/info_list";
	}
	
}
