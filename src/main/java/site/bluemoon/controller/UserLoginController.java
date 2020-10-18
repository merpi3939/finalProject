package site.bluemoon.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.bluemoon.dto.User;
import site.bluemoon.service.UserService;
import site.bluemoon.util.Utility;

@Controller
public class UserLoginController {
	@Autowired
	private UserService userService;
	
	//로그인겟
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String userLogin() {
		return "bluemoon/user/user_login";
	}
	//로그인폼
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String userLogin(@ModelAttribute User user, Model model, HttpSession session) {
			String userId=user.getUserId();
			String userPassword=Utility.encrypt(user.getUserPassword());
		try {
			User userInfo=userService.selectUserId(user.getUserId());
			if(!userInfo.getUserId().equals(userId) || !userInfo.getUserPassword().equals(userPassword) || userInfo.getUserState()==4) {
				model.addAttribute("message", "아이디 또는 비밀번호를 잘못 입력 하셨습니다.");				
				return "bluemoon/user/user_login";
			}
			session.setAttribute("userInfo", userInfo);
			userService.updateUserLoginDate(userInfo.getUserId());
			return "redirect:/";
			
		} catch (Exception e) {
			model.addAttribute("message", "가입 된 아이디가 없습니다.");
			return "bluemoon/user/user_login";
		}
	}
	//로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String userLogout(HttpSession session) {
		session.removeAttribute("userInfo");
		return "redirect:login";
	}
	//마이페이지-예약현황
	@RequestMapping(value = "/myreservation", method = RequestMethod.GET)
	public String userMyPage() {
		return "bluemoon/user/user_reservation";
	}
	//회원수정
	@RequestMapping(value = "/myusermodify", method = RequestMethod.GET)
	public String userModify() {
		return "bluemoon/user/user_modify";
	}
	//회원비번수정
	@RequestMapping(value = "/mypasswdmodify", method = RequestMethod.GET)
	public String userPasswdModify() {
		return "bluemoon/user/user_passwdModify";
	}
	//아이디찾기
	@RequestMapping(value = "/idFind", method = RequestMethod.GET)
	public String idFind() {
		return "bluemoon/user/user_idfind";
	}
	//비번찾기
	@RequestMapping(value = "/passwdFind", method = RequestMethod.GET)
	public String passwdFind() {
		return "bluemoon/user/user_passwdfind";
	}
	
}
