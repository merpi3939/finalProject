package site.bluemoon.mapper;

import java.util.List;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelComment;
import site.bluemoon.dto.HotelReserveDTO;

public interface AdminHotelMapper {
	
	//호텔 예약
	HotelReserveDTO selectHotelReserve();
	List<HotelReserveDTO> selectHotelReserveList();
	int updateHotelReserve(HotelReserveDTO hotelReserve);
	
	
	//호텔 리뷰
	List<HotelComment> selectHotelReviewList();
	HotelComment selectHotelReview();
	
	//호텔 카테고리
	int insertHotelCategory(HotelCategory hotelCategory);
	int updateHotelCategory(HotelCategory hotelCategory);
	
}
