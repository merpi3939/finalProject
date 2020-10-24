package site.bluemoon.controller;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.HashMap;
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

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelPay;
import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.service.AdminHotelService;

@Controller
@RequestMapping("/admin")
public class AdminHotelController {
	@Autowired
	private AdminHotelService adminHotelService;
	
	@Autowired
	private WebApplicationContext context;
	
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
		
		model.addAttribute("category", adminHotelService.selectHotelCategory(Integer.parseInt(reserve.getReserveRoom())));
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
		
		model.addAttribute("category", adminHotelService.selectHotelCategory(Integer.parseInt(reserve.getReserveRoom())));
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
			 @RequestParam MultipartFile uploadFile,Model model) throws IllegalStateException, IOException {
		if(uploadFile.isEmpty()) {
			return "file/upload_fail";
		}
		
		//WebApplicationContext 객체를 이용하여 서버의 업로드 디렉토리의 시스템 경로를 반환받아 저장
		String uploadDir=context.getServletContext().getRealPath("/resources/bluemoon/images/hotel_img");
		//System.out.println("uploadDir = "+uploadDir);
		
		//서버 업로드 디렉토리에 입력파일과 동일한 이름이 파일이 존재할 경우 
		//입력파일명을 변경하여 서버에 저장되도록 작성
		String originalFilename=uploadFile.getOriginalFilename();
		File file=new File(uploadDir, originalFilename);
		
		//실제 서버의 업로드 디렉토리에 저장하기 위한 파일명을 저장하는 변수 선언
		// => 초기값으로 입력파일의 원본 파일명 저장
		String uploadFilename=originalFilename;
		
		//서버에 입력파일의 이름과 같은 이름의 파일이 존재할 경우 저장파일의 이름 변경
		int i=0;
		while(file.exists()) {//동일한 파일이 존재할 경우 반복 처리
			i++;
			int index=originalFilename.lastIndexOf(".");
			//입력파일의 이름 뒤에 "_숫자"를 추가하며 저장파일명으로 사용
			uploadFilename=originalFilename.substring(0, index)
					+"_"+i+originalFilename.substring(index);
			file=new File(uploadDir, uploadFilename);
		}
		
		uploadFile.transferTo(file);
		
		//model.addAttribute("uploader", uploader);
		model.addAttribute("originalFilename", originalFilename);
		model.addAttribute("uploadFilename", uploadFilename);
		
		return "admin/hotel/hotel_room_update";
	}
}
