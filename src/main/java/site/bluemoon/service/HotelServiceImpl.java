package site.bluemoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.bluemoon.dao.HotelDAO;
import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelComment;
import site.bluemoon.dto.HotelPay;
import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.dto.User;
@Service
public class HotelServiceImpl implements HotelService{
	@Autowired
	private HotelDAO hotelReserveDAO;
	

	@Override
	public void addHotelReserve(HotelReserveDTO reserve) {
		hotelReserveDAO.insertReserveHotel(reserve);
		
	}

	@Override
	public HotelCategory selectHotelCategory(int num) {
		return hotelReserveDAO.selectHotelCategory(num);
	}

	@Override
	public List<HotelCategory> selectHotelCategoryList() {
		return hotelReserveDAO.selectHotelCategoryList();
	}

	@Override
	public void addHotelPay(HotelPay pay) {
		int hotelNo=pay.getHotelPayNo();
		if (hotelNo!=0) {
			hotelReserveDAO.insertHotelPay(pay);
			int hotelPayno=pay.getHotelPayNo();
			hotelReserveDAO.selectPayNo(hotelPayno);
			int hotelmem=pay.getHotelPayMemno();
			User user=new User();
			user.setUserNo(hotelmem);
			int hotelPoint=pay.gethotelPayMempoint();
			int hotelState=pay.getHotelPayState();
			user.setUserPoint(hotelPoint);
			System.out.println(hotelState);
				hotelReserveDAO.updateUserPointPlus(user);
		}
		/*hotelReserveDAO.insertHotelPay(pay);
		int hotelPayno=pay.getHotelPayNo();
		hotelReserveDAO.selectPayNo(hotelPayno);
		int hotelmem=pay.getHotelPayMemno();
		User user=new User();
		user.setUserNo(hotelmem);
		int hotelPoint=pay.gethotelPayMempoint();
		int hotelState=pay.getHotelPayState();
		user.setUserPoint(hotelPoint);
		System.out.println(hotelState);
			hotelReserveDAO.updateUserPointPlus(user);*/
		
	}

	public void erasePointHotelPay(User user) {
		hotelReserveDAO.updatePointUserMinus(user);
	}

	@Override
	public HotelReserveDTO selectMemreserve(int num) {
		return hotelReserveDAO.selectMemreserve(num);
	}

	@Override
	public void deletePay(HotelPay pay) {
		
	}

	

	@Override
	public int selectReserveNo() {
		return hotelReserveDAO.selectReserveNo();
	}

@Override
	public void deleteReserve(HotelReserveDTO reserve) {
	
		int reserveno=reserve.getReserveNo();
		HotelPay pay=hotelReserveDAO.selectPayNo(reserveno);
		int mem=pay.getHotelPayMemno();
		int hotelPoint=pay.gethotelPayMempoint();
		User user=new User();
		user.setUserNo(mem);
		user.setUserPoint(hotelPoint);
			hotelReserveDAO.removeReserve(reserve);
			hotelReserveDAO.removePay(pay);
			hotelReserveDAO.updatePointUserMinus(user);
		
		
	}

@Override
public List<HotelComment> selecthotelComment(int no) {
	return hotelReserveDAO.hotelComment(no);
}

	



}
