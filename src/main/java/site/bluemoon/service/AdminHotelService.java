package site.bluemoon.service;

import java.util.List;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelComment;
import site.bluemoon.dto.HotelReserveDTO;

public interface AdminHotelService {
	//호텔 예약
	HotelReserveDTO selectHotelReserve();
	List<HotelReserveDTO> selectHotelReserveList();
	void updateHotelReserve(HotelReserveDTO hotelReserve);
	
	
	//호텔 리뷰
	List<HotelComment> selectHotelReviewList();
	HotelComment selectHotelReview();
	
	//호텔 카테고리
	void insertHotelCategory(HotelCategory hotelCategory);
	void updateHotelCategory(HotelCategory hotelCategory);
	
}
