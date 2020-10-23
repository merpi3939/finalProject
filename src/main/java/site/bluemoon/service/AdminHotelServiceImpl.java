package site.bluemoon.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.bluemoon.dao.AdminHotelDAO;
import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelComment;
import site.bluemoon.dto.HotelPay;
import site.bluemoon.dto.HotelReserveDTO;

@Service
public class AdminHotelServiceImpl implements AdminHotelService {
	@Autowired
	private AdminHotelDAO adminHotelDAO;

	///////////호텔 예약/////////////
	@Override
	public HotelReserveDTO selectHotelReserve(int reserveNo) {
		return adminHotelDAO.selectHotelReserve(reserveNo);
	}

	@Override
	public List<HotelReserveDTO> selectHotelReserveList() {
		return adminHotelDAO.selectHotelReserveList();
	}

	@Override
	public void updateHotelReserve(HotelReserveDTO hotelReserve) {
		adminHotelDAO.updateHotelReserve(hotelReserve);
	}

	///////////호텔 후기//////////////
	@Override
	public List<HotelComment> selectHotelReviewList() {
		return adminHotelDAO.selectHotelReviewList();
	}

	@Override
	public HotelComment selectHotelReview(int commentNo) {
		return adminHotelDAO.selectHotelReview();
	}

	//////////호텔 카테고리////////////
	@Override
	public void insertHotelCategory(HotelCategory hotelCategory) {
		adminHotelDAO.insertHotelCategory(hotelCategory);
		
	}

	@Override
	public void updateHotelCategory(HotelCategory hotelCategory) {
		adminHotelDAO.updateHotelCategory(hotelCategory);
	}
	
	@Override
	public HotelCategory selectHotelCategory(int hotelCategoryNo) {
		return adminHotelDAO.selectHotelCategory(hotelCategoryNo);
	}
	
	@Override
	public List<HotelCategory> selectHotelCategoryList() {
		return adminHotelDAO.selectHotelCategoryList();
	}

	///////////호텔 결제////////////
	@Override
	public HotelPay selectHotelPay(Map<String, Object> map) {
		return adminHotelDAO.selectHotelPay(map);
	}

	@Override
	public int updateHotelPay(HotelPay hotelPay) {
		return adminHotelDAO.updateHotelPay(hotelPay);
	}

	


}
