package site.bluemoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.bluemoon.dao.HotelDAO;
import site.bluemoon.dto.HotelCategory;
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
		hotelReserveDAO.insertHotelPay(pay);
		int hotelPayno=pay.getHotelPayNo();
		hotelReserveDAO.selectPayNo(hotelPayno);
		int hotelmem=pay.getHotelPayMemno();
		User user=new User();
		user.setUserNo(hotelmem);
		int hotelPoint=pay.getHotelMempoint();
		int hotelState=pay.getHotelPayState();
		user.setUserPoint(hotelPoint);
		System.out.println(hotelState);
			hotelReserveDAO.updateUserPointPlus(user);
		
	}

	@Override
	public void erasePointHotelPay(HotelPay pay) {
		hotelReserveDAO.insertHotelPay(pay);
		int hotelPayno=pay.getHotelPayNo();
		hotelReserveDAO.selectPayNo(hotelPayno);
		int hotelmem=pay.getHotelPayMemno();
		User user=new User();
		user.setUserNo(hotelmem);
		
		
	}

	@Override
	public List<HotelReserveDTO> selectMemreserve(int num) {
		return hotelReserveDAO.selectMemreserve(num);
	}

	@Override
	public void deletePay(HotelPay pay) {
		
	}

	@Override
	public void deleteReserve(HotelReserveDTO reserve) {
		// TODO Auto-generated method stub
		
	}

/*	@Override
	public void deleteReserve(HotelReserveDTO reserve) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date day=new Date();
		String day1=sdf.format(day);
		String reserveday=reserve.getReserveCheckIn();
		int reserveno=reserve.getReserveNo();
		User user=new User();
		user.setUserPoint(userPoint);
		HotelPay pay=new HotelPay();
		pay.setHotelPayNo(reserveno);
		if (reserveday!=day1) {
			hotelReserveDAO.removeReserve(reserve);
			hotelReserveDAO.removePay(pay);
			hotelReserveDAO.updatePointUserMinus(user);
		}else {
			throw new RuntimeException("당일 취소는 불가합니다.");
		
		}
		
	}*/

	



}
