package site.bluemoon.mapper;

import java.util.List;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelComment;
import site.bluemoon.dto.HotelReserveDTO;

public interface AdminHotelMapper {
	
	//ȣ�� ����
	HotelReserveDTO selectHotelReserve();
	List<HotelReserveDTO> selectHotelReserveList();
	int updateHotelReserve(HotelReserveDTO hotelReserve);
	
	
	//ȣ�� ����
	List<HotelComment> selectHotelReviewList();
	HotelComment selectHotelReview();
	
	//ȣ�� ī�װ���
	int insertHotelCategory(HotelCategory hotelCategory);
	int updateHotelCategory(HotelCategory hotelCategory);
	
}