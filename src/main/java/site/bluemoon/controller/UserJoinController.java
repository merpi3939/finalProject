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
		
		String userId=userService.checkPhone(userCheck);
		if(userId!=null) {
			model.addAttribute("message", "�̹� ���Ե� ȸ�� ���� �Դϴ�.");
			return "bluemoon/user/user_joincheck";
		}
		return "bluemoon/user/user_join";
	}
	
	//���̵� �ߺ�Ȯ��
	@RequestMapping(value = "/useridcheck", method = RequestMethod.GET)
	@ResponseBody
	public String userIdcheck(@RequestParam(value = "userId") String userId) {
		User user=userService.selectUserId(userId);
		
		if(user!=null) {
			return "no";			
		}
		return "ok";
	}
	//�ٹ�� ��û �ڷ�
	@RequestMapping(value = "/userjoin", method = RequestMethod.GET)
	public String userIdcheck() {
		return "bluemoon/user/user_join_terms";
	}
	
	//ȸ�� ����
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
			model.addAttribute("message", "�̹� �����ϴ� ���̵� �Դϴ�.");
			return "bluemoon/user/user_join";
		}
	}
	
	@ModelAttribute("sexList")
	public List<String> sexList() {
		return Arrays.asList("����","����","����");
	}

}
