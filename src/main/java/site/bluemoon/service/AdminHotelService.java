package site.bluemoon.service;

import java.util.List;
import java.util.Map;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelComment;
import site.bluemoon.dto.HotelPay;
import site.bluemoon.dto.HotelReserveDTO;

public interface AdminHotelService {
	//ȣ�� ����
	HotelReserveDTO selectHotelReserve(int reserveNo);
	List<HotelReserveDTO> selectHotelReserveList();
	List<HotelReserveDTO> selectHotelReserveStateList(int reserveState);
	void updateHotelReserve(HotelReserveDTO hotelReserve);
	int selectNewReservation();
	
	
	//ȣ�� ����
	List<HotelComment> selectHotelReviewList();
	HotelComment selectHotelReview(int commentNo);
	
	//ȣ�� ī�װ�
	void insertHotelCategory(HotelCategory hotelCategory);
	void updateHotelCategory(HotelCategory hotelCategory);
	HotelCategory selectHotelCategory(int hotelCategoryNo);
	List<HotelCategory> selectHotelCategoryList();
	
	//ȣ�� ����
	HotelPay selectHotelPay(Map<String, Object> map);
	int updateHotelPay(HotelPay hotelPay);
	
}
