package site.bluemoon.service;

import java.util.List;
import java.util.Map;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelComment;
import site.bluemoon.dto.HotelPay;
import site.bluemoon.dto.HotelReserveDTO;

public interface AdminHotelService {
	//호텔 예약
	HotelReserveDTO selectHotelReserve(int reserveNo);
	List<HotelReserveDTO> selectHotelReserveList();
	List<HotelReserveDTO> selectHotelReserveStateList(int reserveState);
	void updateHotelReserve(HotelReserveDTO hotelReserve);
	int selectNewReservation();
	
	
	//호텔 리뷰
	List<HotelComment> selectHotelReviewList();
	HotelComment selectHotelReview(int commentNo);
	
	//호텔 카테고리
	void insertHotelCategory(HotelCategory hotelCategory);
	void updateHotelCategory(HotelCategory hotelCategory);
	HotelCategory selectHotelCategory(int hotelCategoryNo);
	List<HotelCategory> selectHotelCategoryList();
	
	//호텔 결제
	HotelPay selectHotelPay(Map<String, Object> map);
	int updateHotelPay(HotelPay hotelPay);
	
}
