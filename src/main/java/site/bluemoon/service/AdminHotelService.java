package site.bluemoon.service;

import java.util.List;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelComment;
import site.bluemoon.dto.HotelReserveDTO;

public interface AdminHotelService {
	//ȣ�� ����
	HotelReserveDTO selectHotelReserve();
	List<HotelReserveDTO> selectHotelReserveList();
	void updateHotelReserve(HotelReserveDTO hotelReserve);
	
	
	//ȣ�� ����
	List<HotelComment> selectHotelReviewList();
	HotelComment selectHotelReview();
	
	//ȣ�� ī�װ�
	void insertHotelCategory(HotelCategory hotelCategory);
	void updateHotelCategory(HotelCategory hotelCategory);
	
}
