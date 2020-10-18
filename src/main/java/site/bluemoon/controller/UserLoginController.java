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
	
	//�α��ΰ�
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String userLogin() {
		return "bluemoon/user/user_login";
	}
	//�α�����
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String userLogin(@ModelAttribute User user, Model model, HttpSession session) {
			String userId=user.getUserId();
			String userPassword=Utility.encrypt(user.getUserPassword());
		try {
			User userInfo=userService.selectUserId(user.getUserId());
			if(!userInfo.getUserId().equals(userId) || !userInfo.getUserPassword().equals(userPassword) || userInfo.getUserState()==4) {
				model.addAttribute("message", "���̵� �Ǵ� ��й�ȣ�� �߸� �Է� �ϼ̽��ϴ�.");				
				return "bluemoon/user/user_login";
			}
			session.setAttribute("userInfo", userInfo);
			userService.updateUserLoginDate(userInfo.getUserId());
			return "redirect:/";
			
		} catch (Exception e) {
			model.addAttribute("message", "���� �� ���̵� �����ϴ�.");
			return "bluemoon/user/user_login";
		}
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
	public String userModify() {
		return "bluemoon/user/user_modify";
	}
	//ȸ���������
	@RequestMapping(value = "/mypasswdmodify", method = RequestMethod.GET)
	public String userPasswdModify() {
		return "bluemoon/user/user_passwdModify";
	}
	//���̵�ã��
	@RequestMapping(value = "/idFind", method = RequestMethod.GET)
	public String idFind() {
		return "bluemoon/user/user_idfind";
	}
	//���ã��
	@RequestMapping(value = "/passwdFind", method = RequestMethod.GET)
	public String passwdFind() {
		return "bluemoon/user/user_passwdfind";
	}
	
}
