package site.bluemoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.bluemoon.dao.AdminHotelDAO;
import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelComment;
import site.bluemoon.dto.HotelReserveDTO;

@Service
public class AdminHotelServiceImpl implements AdminHotelService {
	@Autowired
	private AdminHotelDAO adminHotelDAO;

	///////////ȣ�� ����/////////////
	@Override
	public HotelReserveDTO selectHotelReserve() {
		return adminHotelDAO.selectHotelReserve();
	}

	@Override
	public List<HotelReserveDTO> selectHotelReserveList() {
		return adminHotelDAO.selectHotelReserveList();
	}

	@Override
	public void updateHotelReserve(HotelReserveDTO hotelReserve) {
		adminHotelDAO.updateHotelReserve(hotelReserve);
	}

	///////////ȣ�� �ı�//////////////
	@Override
	public List<HotelComment> selectHotelReviewList() {
		return adminHotelDAO.selectHotelReviewList();
	}

	@Override
	public HotelComment selectHotelReview() {
		return adminHotelDAO.selectHotelReview();
	}

	//////////ȣ�� ī�װ�////////////
	@Override
	public void insertHotelCategory(HotelCategory hotelCategory) {
		adminHotelDAO.insertHotelCategory(hotelCategory);
		
	}

	@Override
	public void updateHotelCategory(HotelCategory hotelCategory) {
		adminHotelDAO.updateHotelCategory(hotelCategory);
	}
	


}
