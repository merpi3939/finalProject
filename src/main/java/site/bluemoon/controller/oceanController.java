package site.bluemoon.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import site.bluemoon.dto.OceanReservationDTO;
import site.bluemoon.dto.User;
import site.bluemoon.exception.UserinfoNotFoundException;
import site.bluemoon.mapper.OceanMapper;
import site.bluemoon.service.OceanService;
import site.bluemoon.service.UserService;

@Controller
public class oceanController {
	@Autowired
	private OceanService oceanService;
	
	@Autowired
	private UserService userService;
	
	//����, ��������
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String waterPark(Model model) {
		model.addAttribute("newsList", oceanService.getSelectNewsList());
		return "main";
	}

	//���ǥ ����Ʈ
	@RequestMapping(value = "/ocean_charge")
	public String oceanReservation(Model model) {
		model.addAttribute("oceanChaereList", oceanService.getOceanChargeList());
		return "bluemoon/waterpark/charge";
	}
	
	//���ǥ ������
	@RequestMapping(value = "/reservation")
	public String oceanChargeList(@RequestParam("chargeList") int cgNo, Model model) {
		model.addAttribute("chargeList", oceanService.getOceanCharge(cgNo));
		return "bluemoon/waterpark/reservation";
	}
	
	//���� �߰�	��
	@RequestMapping(value = "/addOcean", method = RequestMethod.GET)
	public String addOcean() {
		return "bluemoon/waterpark/reservation";
	}
	
	//���� �߰� �Ϸ�, ��������
	@RequestMapping(value = "/addOcean", method = RequestMethod.POST)
	public String addOcean(@ModelAttribute("addOcean") OceanReservationDTO oceanReservation, Model model, HttpSession session) throws UserinfoNotFoundException {
		User userId=(User)session.getAttribute("userInfo");
		User userModify=userService.selectUserId(userId.getUserId());
		int rsUno=userModify.getUserNo();
		oceanReservation.setRsUno(rsUno);
		
		oceanService.addOceanReservation(oceanReservation);
		return "redirect:/payment_list";
	}	
	
	//���� ����Ʈ
	@RequestMapping(value = "/payment_list")
	public String oceanPayment(Model model) {
		model.addAttribute("oceanPaymentList", oceanService.getOceanPaymentList());
		return "bluemoon/waterpark/payment_list";
	}
	
	
	//���� ��������
	@RequestMapping(value = "/payment")
	public String oceanPaymentList(@RequestParam("paymentList") int rsNo, Model model) {
		model.addAttribute("paymentList", oceanService.getOceanPayment(rsNo));
		return "bluemoon/waterpark/payment";
	}
	
	//ȯ��

	/*
	 * //��Ʈ����
	 * 
	 * @RequestMapping(value = "/attraction1", method = RequestMethod.GET) public
	 * String oceanAttracion1() { return "bluemoon/waterpark/attraction1_list"; }
	 * 
	 * //�̺�Ʈ
	 * 
	 * @RequestMapping(value = "/event2", method = RequestMethod.GET) public String
	 * oceanEvent2() { return "bluemoon/waterpark/event2_detail"; }
	 */
}//
