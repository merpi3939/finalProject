package site.bluemoon.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelPay;
import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.dto.User;
import site.bluemoon.exception.UserinfoNotFoundException;
import site.bluemoon.service.HotelService;
import site.bluemoon.service.UserService;

@Controller
public class HotelConteroller {
	@Autowired
	private HotelService hotelReserveService;
	@Autowired
	private UserService userService;
	//호텔리스트 화면 구현 
	@RequestMapping(value = "/hotel")
	public String Hotel(Model model) {
		model.addAttribute("categoryList", hotelReserveService.selectHotelCategoryList());
		return "bluemoon/hotel/hotel";
	}
	
	//상세보기 - 리스트에서 선택된 값 가져와서 출력 
	@RequestMapping(value = "hotel_single")
	public String HotelSingle(Model model, @RequestParam("hotelCategoryNo") int num) {
		model.addAttribute("hotelCategoryNo", hotelReserveService.selectHotelCategory(num));
		return "bluemoon/hotel/hotel_single";
	}
	
	//상세화면의 예약내역 가져오기 
	@RequestMapping(value = "/Hoteladd", method = RequestMethod.POST)
	public String Hoteladd(@ModelAttribute("hotel") HotelReserveDTO reserve,HttpSession session
			,@ModelAttribute("category") HotelCategory category) throws UserinfoNotFoundException {
		
		return "bluemoon/hotel/hotel_pay";
	}
	
	
	//예약,결제 값 저장
	@RequestMapping(value = "/hotelinsert", method = RequestMethod.POST)
	public String Hotelinsert(HttpSession session ,@ModelAttribute HotelReserveDTO reserve,@ModelAttribute  HotelPay pay, Model model) throws UserinfoNotFoundException {
		int hotel_no=hotelReserveService.selectReserveNo();
		
		User userId=(User)session.getAttribute("userInfo");
		User userModify=userService.selectUserId(userId.getUserId());
		int memno=userModify.getUserNo();
		reserve.setReserveMemno(memno);
		pay.setHotelPayMemno(memno);
		int hotelPrice=pay.getHotelPayPrice();
		int point=pay.getHotelPayPrice();
		int pointadd=(int) (point*0.1);
		System.out.println(pointadd);
		pay.setHotelMempoint(pointadd);
		reserve.setReservePrice(hotelPrice);
		reserve.setReserveNo(hotel_no);
		int room=reserve.getReserveRoom();
		hotelReserveService.addHotelReserve(reserve);
		pay.setHotelPayNo(hotel_no);
		hotelReserveService.addHotelPay(pay);
		model.addAttribute("hotelCategoryNo", hotelReserveService.selectHotelCategory(room));
		model.addAttribute("reserveList", hotelReserveService.selectMemreserve(hotel_no));
		return "bluemoon/hotel/hotel_order";
	}
	@RequestMapping(value = "/Hotelcansle", method = RequestMethod.GET)
	public String Hotelcansle(@ModelAttribute("reserveList") HotelReserveDTO reserve) {
			hotelReserveService.deleteReserve(reserve);		
			return "bluemoon/hotel/hotel";
	}
	
	@RequestMapping(value = "/hotel_service", method = RequestMethod.GET)
	public String HotelService() {
		return "bluemoon/hotel/hotel_service";
	}
	
	//회원별 전체 예약 
	/*@RequestMapping(value = "/hotelAllList", method = RequestMethod.GET)
	public String HotelAllList(HttpSession session,Model model ) throws UserinfoNotFoundException {
		User userId=(User)session.getAttribute("userInfo");
		User userModify=userService.selectUserId(userId.getUserId());
		int num=userModify.getUserNo();
		model.addAttribute("reserveList", hotelReserveService.selectMemreserve(num));
		return "bluemoon/hotel/hotelAllList";
	}*/
	/*@RequestMapping(value = "/HotelAllList", method = RequestMethod.GET)
	public String HotelAllList(HttpSession session,Model model) throws UserinfoNotFoundException {
		User userId=(User)session.getAttribute("userInfo");
		User userModify=userService.selectUserId(userId.getUserId());
		int no=userModify.getUserNo();
		model.addAttribute("AllList", hotelReserveService.selectHotelAllList(no));
		return "bluemoon/hotel/HotelAllList";
	}*/


}
