package site.bluemoon.mapper;

import java.util.List;
import java.util.Map;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelComment;
import site.bluemoon.dto.HotelPay;
import site.bluemoon.dto.HotelReserveDTO;

public interface AdminHotelMapper {
	
	//ȣ�� ����
	HotelReserveDTO selectHotelReserve(int reserveNo);
	List<HotelReserveDTO> selectHotelReserveList();
	List<HotelReserveDTO> selectHotelReserveStateList(int reserveState);
	int updateHotelReserve(HotelReserveDTO hotelReserve);
	
	
	//ȣ�� ����
	List<HotelComment> selectHotelReviewList();
	HotelComment selectHotelReview(int commentNo);
	
	//ȣ�� ī�װ�
	int insertHotelCategory(HotelCategory hotelCategory);
	int updateHotelCategory(HotelCategory hotelCategory);
	HotelCategory selectHotelCategory(int hotelCategoryNo);
	List<HotelCategory> selectHotelCategoryList();
	
	//ȣ�� ���� ����
	HotelPay selectHotelPay(Map<String, Object> map);
	int updateHotelPay(HotelPay hotelPay);
	
}
