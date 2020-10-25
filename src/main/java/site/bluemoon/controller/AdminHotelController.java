package site.bluemoon.controller;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelPay;
import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.service.AdminHotelService;
import site.bluemoon.service.FileService;
import site.bluemoon.util.FileUpload;

@Controller
@RequestMapping("/admin")
public class AdminHotelController {
	@Autowired
	private AdminHotelService adminHotelService;
	
	@Autowired
	private WebApplicationContext context;
	
	@Autowired
	private FileService fileService;
	
	@RequestMapping(value = "/hotel_status", method = RequestMethod.GET)
	public String hotelStatus(Model model) {
		model.addAttribute("commentList", adminHotelService.selectHotelReviewList());
		model.addAttribute("reserveList", adminHotelService.selectHotelReserveList());
		return "admin/hotel/hotel_status";
	}
	
	@RequestMapping(value = "/hotel_reservation_list", method = RequestMethod.GET)
	public String hotelReservationListPrint(Model model) {
		model.addAttribute("reservationList", adminHotelService.selectHotelReserveList());
		model.addAttribute("newReserveList", adminHotelService.selectHotelReserveStateList(1));
		model.addAttribute("confirmedReserveList", adminHotelService.selectHotelReserveStateList(2));
		model.addAttribute("cancelReserveList", adminHotelService.selectHotelReserveStateList(0));
		return "admin/hotel/hotel_reservation_list";
	}
	
	
	@RequestMapping(value = "/hotel_reservation_update",method = RequestMethod.GET)
	public String hotelReservationUpdate(int reserveNo,Model model) {
		model.addAttribute("hotelCategoryList", adminHotelService.selectHotelCategoryList());
		
		HotelReserveDTO reserve= adminHotelService.selectHotelReserve(reserveNo);
		model.addAttribute("reserve", reserve);
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("hotelPayNo", reserve.getReserveNo());
		model.addAttribute("pay", adminHotelService.selectHotelPay(map));
		
		model.addAttribute("category", adminHotelService.selectHotelCategory(reserve.getReserveRoom()));
		return "admin/hotel/hotel_reservation_update";
	}
	
	@RequestMapping(value = "/hotel_reservation_update",method = RequestMethod.POST)
	public String hotelReservationUpdate(@ModelAttribute HotelReserveDTO hotelReserve , @ModelAttribute HotelPay hotelPay, Model model) {
		adminHotelService.updateHotelReserve(hotelReserve);
		adminHotelService.updateHotelPay(hotelPay);
		
		return "redirect:/admin/hotel_reservation_detail?reserveNo="+hotelReserve.getReserveNo();
	}
	
	@RequestMapping(value = "/hotel_reservation_detail")
	public String hotelReservationDetail(Integer reserveNo,Model model) {
		if(reserveNo==null || reserveNo==0) {
			model.addAttribute("message", "잘못된 접근입니다.");
			return "admin/hotel/hotel_reservation_list";
		}
		
		HotelReserveDTO reserve= adminHotelService.selectHotelReserve(reserveNo);
		model.addAttribute("reserve", reserve);
		
		Map<String, Object> map=new HashMap<String, Object>();
		//map.put("hotelPayMemno", reserve.getReserveMemno());
		map.put("hotelPayNo", reserve.getReserveNo());
		model.addAttribute("pay", adminHotelService.selectHotelPay(map));
		
		model.addAttribute("category", adminHotelService.selectHotelCategory(reserve.getReserveRoom()));
		return "admin/hotel/hotel_reservation_detail";
	}
	
	@RequestMapping(value = "/hotel_review_list")
	public String hotelReviewList(Model model) {
		model.addAttribute("commentList", adminHotelService.selectHotelReviewList());
		return "admin/hotel/hotel_review_list";
	}
	
	@RequestMapping(value = "/hotel_review_detail")
	public String hotelReviewDetail(int commentNo,Model model) {
		model.addAttribute("comment", adminHotelService.selectHotelReview(commentNo));
		return "admin/hotel/hotel_review_detail";
	}
	
	@RequestMapping(value = "/hotel_room_type")
	public String hotelRoomType(Model model) {
		model.addAttribute("categoryList", adminHotelService.selectHotelCategoryList());
		return "admin/hotel/hotel_room_type";
	}

	
	@RequestMapping(value = "/hotel_room_add", method = RequestMethod.GET)
	public String hotelRoomAdd(Model model) {
		return "admin/hotel/hotel_room_add";
	}
	
	@RequestMapping(value = "/hotel_room_add", method = RequestMethod.POST)
	public String hotelRoomInsert(@RequestParam MultipartFile img1,@RequestParam MultipartFile img2
			,@RequestParam MultipartFile img3,@RequestParam MultipartFile img4
			,@ModelAttribute HotelCategory hotelCategory, Model model) throws IllegalStateException, IOException {
		
		String uploadDir=context.getServletContext().getRealPath("/resources/bluemoon/hotel");
		
		String img1Filename=img1.getOriginalFilename();
		String img2Filename=img2.getOriginalFilename();
		String img3Filename=img3.getOriginalFilename();
		String img4Filename=img4.getOriginalFilename();
		File file1=new File(uploadDir, img1Filename);
		File file2=new File(uploadDir, img2Filename);
		File file3=new File(uploadDir, img3Filename);
		File file4=new File(uploadDir, img4Filename);
		
		String uploadFilename1=img1Filename;
		String uploadFilename2=img2Filename;
		String uploadFilename3=img3Filename;
		String uploadFilename4=img4Filename;
		
		int i=0;
		while(file1.exists()) {
			i++;
			int index=img1Filename.lastIndexOf(".");
			//입력파일의 이름 뒤에 "_숫자"를 추가하며 저장파일명으로 사용
			uploadFilename1=img1Filename.substring(0, index)
					+"_"+i+img1Filename.substring(index);
			file1=new File(uploadDir, img1Filename);
		}
		
		img1.transferTo(file1);
		
		hotelCategory.setHotelCategoryImg1(uploadFilename1);
		hotelCategory.setHotelCategoryImg2(uploadFilename2);
		hotelCategory.setHotelCategoryImg3(uploadFilename3);
		hotelCategory.setHotelCategoryImg4(uploadFilename4);
		
		
		adminHotelService.insertHotelCategory(hotelCategory);
		model.addAttribute("hotelCategoryNo", hotelCategory.getHotelCategoryNo());
		return "redirect:/admin/hotel_room_type";
	}
	
	@RequestMapping(value = "/hotel_room_detail")
	public String hotelRoomDetail(int hotelCategoryNo,Model model) {
		model.addAttribute("category", adminHotelService.selectHotelCategory(hotelCategoryNo));
		return "admin/hotel/hotel_room_detail";
	}
	
	@RequestMapping(value = "/hotel_room_update", method = RequestMethod.GET)
	public String hotelRoomUpdate(int hotelCategoryNo,Model model) {
		model.addAttribute("category", adminHotelService.selectHotelCategory(hotelCategoryNo));
		return "admin/hotel/hotel_room_update";
	}
	
	@RequestMapping(value = "/hotel_room_update", method = RequestMethod.POST)
	public String hotelRoomUpdate(@ModelAttribute HotelCategory hotelCategory,
			MultipartHttpServletRequest mRequest,
			 Model model) throws IllegalStateException, IOException {
		
		String uploadDir=context.getServletContext().getRealPath("/resources/bluemoon/images/hotel_img/");
		Map<String, Object> result= fileService.fileUpload(mRequest,uploadDir, "hotelCategoryImg");
		if((boolean)result.get("result")) {
			//mav.addObject("result", "SUCCESS");
			if((String)result.get("hotelCategoryImg1")!=null && !((String)result.get("hotelCategoryImg1")).equals("")) 
				hotelCategory.setHotelCategoryImg1((String)result.get("hotelCategoryImg1"));
			if((String)result.get("hotelCategoryImg2")!=null && !((String)result.get("hotelCategoryImg2")).equals("")) 
				hotelCategory.setHotelCategoryImg2((String)result.get("hotelCategoryImg2"));
			if((String)result.get("hotelCategoryImg3")!=null && !((String)result.get("hotelCategoryImg3")).equals("")) 
				hotelCategory.setHotelCategoryImg3((String)result.get("hotelCategoryImg3"));
			if((String)result.get("hotelCategoryImg4")!=null && !((String)result.get("hotelCategoryImg4")).equals("")) 
				hotelCategory.setHotelCategoryImg4((String)result.get("hotelCategoryImg4"));
			
			
			
			System.out.println("success");
		} else {
			//mav.addObject("result", "FAIL");
			System.out.println("fail");
		}
		adminHotelService.updateHotelCategory(hotelCategory);
		
		return "redirect:/admin/hotel_room_detail?hotelCategoryNo="+hotelCategory.getHotelCategoryNo();
	}
}
