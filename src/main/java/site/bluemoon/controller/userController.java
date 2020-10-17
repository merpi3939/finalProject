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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import site.bluemoon.dto.User;
import site.bluemoon.service.UserService;
import site.bluemoon.util.Utility;

@Controller
@SessionAttributes("user")
public class userController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String userLogin() {
		return "bluemoon/user/user_login";
	}
	
	@RequestMapping(value = "/idFind", method = RequestMethod.GET)
	public String idFind() {
		return "bluemoon/user/user_idfind";
	}

	@RequestMapping(value = "/passwdFind", method = RequestMethod.GET)
	public String passwdFind() {
		return "bluemoon/user/user_passwdfind";
	}
	
	//가입여부(휴대폰)
	@RequestMapping(value = "/usercheck", method = RequestMethod.GET)
	public String userJoinCheck(Model model) {
		User user=new User();
		model.addAttribute(user);		
		return "bluemoon/user/user_joincheck";
	}
	@RequestMapping(value = "/usercheck", method = RequestMethod.POST)
	public String userJoinCheck(@ModelAttribute User user, Model model) {
		Map<String, Object> userCheck=new HashMap<String, Object>();
		
		String phone=user.getPhone1()+"-"+user.getPhone2()+"-"+user.getPhone3();
		
		userCheck.put("userName", user.getUserName());
		userCheck.put("userPhone", phone);
		
		String userId=userService.checkPhone(userCheck);
		if(userId!=null) {
			model.addAttribute("message", "이미 가입된 정보 입니다.");
			return "bluemoon/user/user_joincheck";
		}
		return "bluemoon/user/user_join_terms";
	}
	
	@RequestMapping(value = "/useridcheck", method = RequestMethod.GET)
	@ResponseBody
	public String userIdcheck(@RequestParam(value = "userId") String userId) {
		User user=userService.selectUserId(userId);
		
		if(user!=null) {
			return "no";			
		}
			return "ok";
	}
	
	//회원가입
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String userJoin() {
		return "bluemoon/user/user_join";
	}
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String userJoin(@Valid @ModelAttribute User user, Errors errors, RedirectAttributes attributes) {
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
		} catch (Exception e) {
			attributes.addAttribute("message", "이미 존재하는 아이디 입니다.");
			return "redirect:bluemoon/user/user_join";
		}
		
		return "bluemoon/waterpark/main";
	}
	
	@ModelAttribute("sexList")
	public List<String> sexList() {
		return Arrays.asList("선택","남자","여자");
	}

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String userMyPage() {
		return "bluemoon/user/user_reservation";
	}
}
