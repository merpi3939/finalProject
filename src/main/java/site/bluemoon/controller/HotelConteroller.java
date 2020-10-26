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
	//ȣ�ڸ���Ʈ ȭ�� ���� 
	@RequestMapping(value = "/hotel")
	public String Hotel(Model model) {
		model.addAttribute("categoryList", hotelReserveService.selectHotelCategoryList());
		return "bluemoon/hotel/hotel";
	}
	
	//�󼼺��� - ����Ʈ���� ���õ� �� �����ͼ� ��� 
	@RequestMapping(value = "hotel_single")
	public String HotelSingle(Model model, @RequestParam("hotelCategoryNo") int num) {
		model.addAttribute("commentList", hotelReserveService.selecthotelComment(num));
		model.addAttribute("hotelCategoryNo", hotelReserveService.selectHotelCategory(num));
		return "bluemoon/hotel/hotel_single";
	}
	
	//��ȭ���� ���೻�� �������� 
	@RequestMapping(value = "/Hoteladd", method = RequestMethod.POST)
	public String Hoteladd(HttpSession session,@ModelAttribute("hotel") HotelReserveDTO reserve,
			@ModelAttribute("category") HotelCategory category,@ModelAttribute("User") User user1) throws UserinfoNotFoundException {
		User userId=(User)session.getAttribute("userInfo");
		User userModify=userService.selectUserId(userId.getUserId());
		int useP=userModify.getUserPoint();
		System.out.println(useP);
		user1.setUserPoint(useP);
		return "bluemoon/hotel/hotel_pay";
	}
	
	
	//����,���� �� ����
	@RequestMapping(value = "/hotelinsert", method = RequestMethod.POST)
	public String Hotelinsert(HttpSession session ,@ModelAttribute HotelReserveDTO reserve,@ModelAttribute  HotelPay pay
			, Model model,@ModelAttribute("User") User user1,@RequestParam("hotelUsePoint")String hotelUsePoint) throws UserinfoNotFoundException {
		User userId=(User)session.getAttribute("userInfo");
		User userModify=userService.selectUserId(userId.getUserId());
		int memno=userModify.getUserNo();
		reserve.setReserveMemno(memno);
		pay.setHotelPayMemno(memno);
		
		if(hotelUsePoint=="") {
			hotelUsePoint="0";
		}
		
		user1.setUserPoint(Integer.parseInt(hotelUsePoint));
		user1.setUserNo(memno);
		hotelReserveService.erasePointHotelPay(user1);
		int hotel_no=hotelReserveService.selectReserveNo();
		int hotelPrice=pay.getHotelPayPrice();
		int point=pay.getHotelPayPrice();
		int pointadd=(int) (point*0.1);
		System.out.println(pointadd);
		pay.sethotelPayMempoint(pointadd);
		reserve.setReservePrice(hotelPrice);
		reserve.setReserveNo(hotel_no);
		int room=reserve.getReserveRoom();
		hotelReserveService.addHotelReserve(reserve);
		pay.setHotelPayNo(hotel_no);
		pay.setUserPoint(Integer.parseInt(hotelUsePoint));
		hotelReserveService.addHotelPay(pay);
		model.addAttribute("hotelCategoryNo", hotelReserveService.selectHotelCategory(room));
		model.addAttribute("reserveList", hotelReserveService.selectMemreserve(hotel_no));
		return "bluemoon/hotel/hotel_order";
	}
	@RequestMapping(value = "/Hotelcansle", method = RequestMethod.GET)
	public String Hotelcansle(@ModelAttribute("reserveList") HotelReserveDTO reserve,Model model) {
			hotelReserveService.deleteReserve(reserve);	
			int hotel_no=reserve.getReserveNo();
			int room=reserve.getReserveRoom();
			model.addAttribute("hotelCategoryNo", hotelReserveService.selectHotelCategory(room));
			model.addAttribute("reserveList1", hotelReserveService.selectMemreserve(hotel_no));
			return "bluemoon/hotel/hotel_cansle";
	}
	
	@RequestMapping(value = "/hotel_service", method = RequestMethod.GET)
	public String HotelService() {
		return "bluemoon/hotel/hotel_service";
	}
	@RequestMapping(value = "/hotel_event", method = RequestMethod.GET)
	public String hotel_event() {
		return "bluemoon/hotel/hotel_event";
	}
	
	
	//ȸ���� ��ü ���� 
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
