package site.bluemoon.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import site.bluemoon.dto.User;
import site.bluemoon.service.UserService;
import site.bluemoon.util.Utility;

@Controller
public class UserJoinController {
	@Autowired
	private UserService userService;
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
		
		userCheck.put("userName", user.getUserName());
		userCheck.put("userPhone", phone);
		
		String userId=userService.checkPhone(userCheck);
		if(userId!=null) {
			model.addAttribute("message", "이미 가입된 회원 정보 입니다.");
			return "bluemoon/user/user_joincheck";
		}
		return "bluemoon/user/user_join";
	}
	
	//아이디 중복확인
	@RequestMapping(value = "/useridcheck", method = RequestMethod.GET)
	@ResponseBody
	public String userIdcheck(@RequestParam(value = "userId") String userId) {
		User user=userService.selectUserId(userId);
		
		if(user!=null) {
			return "no";			
		}
		return "ok";
	}
	//겟방식 요청 뒤로
	@RequestMapping(value = "/userjoin", method = RequestMethod.GET)
	public String userIdcheck() {
		return "bluemoon/user/user_join_terms";
	}
	
	//회원 가입
	@RequestMapping(value = "/userjoin", method = RequestMethod.POST)
	public String userJoin(@Valid @ModelAttribute User user, Errors errors, Model model) {
		if(errors.hasErrors()) {
			return "bluemoon/user/user_join";
		}
		String userName=Utility.stripTag(user.getUserName());
		String userPassword=Utility.encrypt(user.getUserPassword());
		
		String userPhone=user.getPhone1()+"-"+user.getPhone2()+"-"+user.getPhone3();
		user.setUserName(userName);
		user.setUserPassword(userPassword);
		user.setUserPhone(userPhone);
		
		try {
			userService.addUser(user);
			return "redirect:login";
			
		} catch (Exception e) {
			model.addAttribute("message", "이미 존재하는 아이디 입니다.");
			return "bluemoon/user/user_join";
		}
	}
	
	@ModelAttribute("sexList")
	public List<String> sexList() {
		return Arrays.asList("선택","남자","여자");
	}

}
