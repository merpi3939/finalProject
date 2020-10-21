package site.bluemoon.controller;

import java.util.Arrays;
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
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import site.bluemoon.dto.User;
import site.bluemoon.exception.LoginAuthFailException;
import site.bluemoon.exception.UserinfoNotFoundException;
import site.bluemoon.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	//����̵�
	@RequestMapping(value = "/jointerms", method = RequestMethod.GET)
	public String userJointerms() {
		return "bluemoon/user/user_join_terms";
	}
	//�����̸���ȣüũ �̵�
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String userJoinCheck() {
		return "bluemoon/user/user_joincheck";
	}
	
	//�����̸���ȣüũ
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String userJoinCheck(@ModelAttribute User user, Model model) {
		Map<String, Object> userCheck=new HashMap<String, Object>();
		
		String phone=user.getPhone1()+"-"+user.getPhone2()+"-"+user.getPhone3();
		
		userCheck.put("userName", user.getUserName());
		userCheck.put("userPhone", phone);
		try {
			userService.checkUser(userCheck);
		} catch (UserinfoNotFoundException e) {
			return "bluemoon/user/user_join";
		}
		model.addAttribute("message", "�̹� ���� �Ǿ��ִ� ��ȭ��ȣ�Դϴ�.");
		return "bluemoon/user/user_joincheck";
	}
	
	//���̵� �ߺ�Ȯ��
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
	//�ٹ�� ��û �ڷ�
	@RequestMapping(value = "/userjoin", method = RequestMethod.GET)
	public String userIdcheck(HttpServletRequest request) {
	
		return "bluemoon/user/user_join_terms";
	}
	
	@ModelAttribute("sexList")
	public List<String> sexList() {
		return Arrays.asList("����","����","����");
	}
	
	@ModelAttribute("phoneList")
	public List<String> phone1List() {
		return Arrays.asList("010","011","012","016","017","018","019");
	}
	
	//ȸ�� ����
	@RequestMapping(value = "/userjoin", method = RequestMethod.POST)
	public String userJoin(@Valid @ModelAttribute User user, Errors errors, Model model) {
		if(errors.hasErrors()) {
			return "bluemoon/user/user_join";
		}
		try {
			userService.addUser(user);
			model.addAttribute("msg","�α��� ����");
            model.addAttribute("url","/");
			return "bluemoon/user/user_login";
			
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			return "bluemoon/user/user_join";
		}
	}
	
	//�α��ΰ�
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String userLogin() {
		return "bluemoon/user/user_login";
	}
	//�α�����
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
	//���̵�ã��
	@RequestMapping(value = "/idFind", method = RequestMethod.POST)
	@ResponseBody
	public String idFind(@RequestBody User user) {
		Map<String, Object> userIdFind=new HashMap<String, Object>();
		userIdFind.put("userName", user.getUserName());
		userIdFind.put("userPhone", user.getUserPhone());
		
		try {
			User userid=userService.checkUser(userIdFind);
			
			return "ȸ������ ���̵�� "+userid.getUserId()+" �Դϴ�";
		} catch (UserinfoNotFoundException e) {
			return e.getMessage();			
		}
		
	}
	//���ã��
	@RequestMapping(value = "/passwdFind", method = RequestMethod.GET)
	public String passwdFind() {
		return "bluemoon/user/user_passwdfind";
	}
	//�α׾ƿ�
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String userLogout(HttpSession session) {
		session.removeAttribute("userInfo");
		return "redirect:login";
	}
	
	//����������-������Ȳ
	@RequestMapping(value = "/myreservation", method = RequestMethod.GET)
	public String userMyPage() {
		
		return "bluemoon/user/user_reservation";
	}
	
	//ȸ������
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
			reAttributes.addFlashAttribute("message", "ȸ�� ������ ���� �Ǿ����ϴ�.");
			
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
	//ȸ��Ż��
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
