package site.bluemoon.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.dto.OceanReservationDTO;
import site.bluemoon.dto.User;
import site.bluemoon.exception.LoginAuthFailException;
import site.bluemoon.exception.UserinfoNotFoundException;
import site.bluemoon.service.HotelService;
import site.bluemoon.service.OceanService;
import site.bluemoon.service.UserService;
import site.bluemoon.util.NewPassword;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private HotelService hotelService;
	@Autowired
	private OceanService oceanService;
	
	//약관이동
	@RequestMapping(value = "/jointerms", method = RequestMethod.GET)
	public String userJointerms() {
		return "bluemoon/user/user_join_terms";
	}

	//유저이름번호체크 이동
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String userJoinCheck() {
		return "bluemoon/user/user_joincheck";
	}
	
	//유저이름번호체크
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String userJoinCheck(@ModelAttribute User user, Model model) {
		Map<String, Object> userCheck=new HashMap<String, Object>();
		
		String phone=user.getPhone1()+"-"+user.getPhone2()+"-"+user.getPhone3();
		
		userCheck.put("userPhone", phone);
		try {
			userService.checkUser(userCheck);
		} catch (UserinfoNotFoundException e) {
			return "bluemoon/user/user_join";
		}
		model.addAttribute("message", "이미 가입 되어있는 전화번호입니다.");
		return "bluemoon/user/user_joincheck";
	}
	
	//아이디 중복확인
	@RequestMapping(value = "/useridcheck", method = RequestMethod.GET)
	@ResponseBody
	public String userIdcheck(@RequestParam(value = "userId") String userId) {
		try {
			userService.selectUserId(userId);
			return "no";			
		} catch (Exception e) {
			return "ok";
		}
	}
	//겟방식 요청 뒤로
	@RequestMapping(value = "/userjoin", method = RequestMethod.GET)
	public String userIdcheck(HttpServletRequest request) {
	
		return "bluemoon/user/user_join_terms";
	}
		
	//회원 가입
	@RequestMapping(value = "/userjoin", method = RequestMethod.POST)
	public String userJoin(@Valid @ModelAttribute User user, Errors errors, Model model) {
		if(errors.hasErrors()) {
			return "bluemoon/user/user_join";
		}
		try {
			userService.addUser(user);
			return "redirect:login?result=congratulations";
			
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			return "bluemoon/user/user_join";
		}
	}
	
	//로그인겟
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String userLogin() {
		return "bluemoon/user/user_login";
	}
	//로그인폼
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String userLogin(@ModelAttribute User user, HttpSession session) throws LoginAuthFailException, UserinfoNotFoundException {
			userService.loginAuth(user);
		
			session.setAttribute("userInfo", userService.selectUserId(user.getUserId()));
			userService.updateUserLoginDate(user.getUserId());
			
			if(session.getAttribute("destURI")!=null) {
				String destURI=(String)session.getAttribute("destURI");
				session.removeAttribute("destURI");
				return "redirect:"+destURI;
			}
			return "bluemoon/waterpark/main";
	}
	//아이디찾기
	@RequestMapping(value = "/idFind", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody()
	public String idFind(@RequestBody User user) {
		Map<String, Object> userIdFind=new HashMap<String, Object>();
		userIdFind.put("userName", user.getUserName());
		userIdFind.put("userPhone", user.getUserPhone());
		
		try {
			User userid=userService.checkUser(userIdFind);
			
			return "회원님의 아이디는 "+userid.getUserId()+" 입니다";
		} catch (UserinfoNotFoundException e) {
			return e.getMessage();
		}
		
	}
	//비번찾기
	@RequestMapping(value = "/passwdFind", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody()
	public String passwdFind(@RequestBody User user) {
		Map<String, Object> userPasswdFind=new HashMap<String, Object>();
		userPasswdFind.put("userId", user.getUserId());
		userPasswdFind.put("userEmail", user.getUserEmail());
		
		try {
			User userModi=userService.checkUser(userPasswdFind);
			
			String newPasswd=NewPassword.newPassword();
			userModi.setUserPassword(newPasswd);
			
			userService.updatePassUser(userModi);
			
			return "회원님의 임시 비밀번호는 "+newPasswd+" 입니다. 로그인 후 변경해주세요";
			
		} catch (UserinfoNotFoundException e) {
			return e.getMessage();
		}
		
	}
	//로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String userLogout(HttpSession session) {
		session.removeAttribute("userInfo");
		return "bluemoon/user/user_login";
	}
	
	//마이페이지-예약현황
	@RequestMapping(value = "/myuserreservation", method = RequestMethod.GET)
	public String userMyPage(HttpSession session,Model model) {
		
		User user=(User)session.getAttribute("userInfo");
		List<OceanReservationDTO> oceanList=userService.findUserWater(user.getUserNo());
		List<HotelReserveDTO> hotelList=userService.findUserHotel(user.getUserNo());
		
		
		if(oceanList.size()<=0) {
			model.addAttribute("message1", "워터파크 예약 정보가 없습니다.");
		} 
		if(hotelList.size()<=0) {
			model.addAttribute("message2", "호텔 예약 정보가 없습니다.");
		}
		
		model.addAttribute("ocean", oceanList);
		model.addAttribute("hotel", hotelList);
		
		return "bluemoon/user/user_reservation";
	}
	//예약 상세정보
	@RequestMapping(value = "/userHotel", method = RequestMethod.GET)
	public String userHotelView(@RequestParam(value = "hotelNum") int hotelNum, @RequestParam(value = "hotelRoom") int hotelRoom, Model model) {
		model.addAttribute("hotelCategoryNo",hotelService.selectHotelCategory(hotelRoom));
		model.addAttribute("reserveList", hotelService.selectMemreserve(hotelNum));
		
		return "bluemoon/hotel/hotel_order";
	}
	@RequestMapping(value = "/userWater", method = RequestMethod.GET)
	public String userHotelView(@RequestParam(value = "rsNo") int rsNo, Model model) {
		model.addAttribute("paymentList",oceanService.getOceanPayment(rsNo));
		
		return "bluemoon/waterpark/payment";
	}
	
	
	//회원수정
	@RequestMapping(value = "/myusermodify", method = RequestMethod.GET)
	public String userModify(Model model, HttpSession session) throws UserinfoNotFoundException {
		
		User userId=(User)session.getAttribute("userInfo");
		User userModify=userService.selectUserId(userId.getUserId());
		String[] phone=userModify.getUserPhone().split("-");
		userModify.setPhone1(phone[0]);
		userModify.setPhone2(phone[1]);
		userModify.setPhone3(phone[2]);
		model.addAttribute("user",userModify);
		
		return "bluemoon/user/user_modify";
	}
	
	@RequestMapping(value = "/myusermodify", method = RequestMethod.POST)
	public String userModify(@ModelAttribute User user, Model model, RedirectAttributes reAttributes, HttpSession session) { 
		try {
			userService.updateUserInfo(user);			
			reAttributes.addFlashAttribute("message", "회원 정보가 변경 되었습니다.");
			
			User userId=(User)session.getAttribute("userInfo");
			if(userId.getUserId().equals(user.getUserId())) {
				session.setAttribute("userInfo", userService.selectUserId(user.getUserId()));
			}
			
			
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			return "bluemoon/user/user_modify";
		}
		return "redirect:myusermodify";
	}
	//회원탈퇴
	@RequestMapping(value = "/myuserremove", method = RequestMethod.POST)
	@ResponseBody
	public String userRemove(@RequestBody String userPassword, HttpSession session) throws UserinfoNotFoundException {
		User user=(User)session.getAttribute("userInfo");
		
		if(BCrypt.checkpw(userPassword, user.getUserPassword())) {
			userService.removeUser(user.getUserId());
			session.invalidate();
			return "ok";
		}
		return "no";
	}

}
