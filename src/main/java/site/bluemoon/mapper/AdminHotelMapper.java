package site.bluemoon.mapper;

import java.util.List;
import java.util.Map;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelComment;
import site.bluemoon.dto.HotelPay;
import site.bluemoon.dto.HotelReserveDTO;

public interface AdminHotelMapper {
	
	//호텔 예약
	HotelReserveDTO selectHotelReserve(int reserveNo);
	List<HotelReserveDTO> selectHotelReserveList();
	List<HotelReserveDTO> selectHotelReserveStateList(int reserveState);
	int updateHotelReserve(HotelReserveDTO hotelReserve);
	
	
	//호텔 리뷰
	List<HotelComment> selectHotelReviewList();
	HotelComment selectHotelReview(int commentNo);
	
	//호텔 카테고리
	int insertHotelCategory(HotelCategory hotelCategory);
	int updateHotelCategory(HotelCategory hotelCategory);
	HotelCategory selectHotelCategory(int hotelCategoryNo);
	List<HotelCategory> selectHotelCategoryList();
	
	//호텔 결제 정보
	HotelPay selectHotelPay(Map<String, Object> map);
	int updateHotelPay(HotelPay hotelPay);
	
}
