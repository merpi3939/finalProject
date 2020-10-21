package site.bluemoon.controller;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

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
	public String hotelStatus() {
		return "admin/hotel/hotel_status";
	}
	
	@RequestMapping(value = "/hotel_reservation_list_display", method = RequestMethod.GET)
	public String hotelReservationListPrint(Model model) {
		model.addAttribute("reservationList", adminHotelService.selectHotelReserveList());
		return "admin/hotel/hotel_reservation_list";
	}
	
	@RequestMapping(value = "/hotel_reservation_list", method = RequestMethod.GET)
	public List<HotelReserveDTO> hotelReservationList(Model model) {
		//model.addAttribute("reservationList", );
		return adminHotelService.selectHotelReserveList();
	}
	
	@RequestMapping(value = "/hotel_reservation_update")
	public String hotelReservationUpdate(Model model) {
		return "admin/hotel/hotel_reservation_update";
	}
	
	@RequestMapping(value = "/hotel_reservation_detail")
	public String hotelReservationDetail(Model model) {
		return "admin/hotel/hotel_reservation_detail";
	}
	
	@RequestMapping(value = "/hotel_review_list")
	public String hotelReviewList(Model model) {
		return "admin/hotel/hotel_review_list";
	}
	
	@RequestMapping(value = "/hotel_review_detail")
	public String hotelReviewDetail(Model model) {
		return "admin/hotel/hotel_review_detail";
	}
	
	@RequestMapping(value = "/hotel_room_type")
	public String hotelRoomType(Model model) {
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
	public String hotelRoomDetail(Model model) {
		return "admin/hotel/hotel_room_detail";
	}
}
