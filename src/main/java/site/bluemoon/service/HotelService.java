package site.bluemoon.service;

import java.util.List;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelReserveDTO;

public interface HotelService {
	void addHotelReserve(HotelReserveDTO reserve);
	void selectHotelCategory(int num);
	 List<HotelCategory> selectHotelCategoryList();
	
}
