package site.bluemoon.service;

import java.util.List;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelPay;
import site.bluemoon.dto.HotelReserveDTO;

public interface HotelService {
	void addHotelReserve(HotelReserveDTO reserve);
	public HotelCategory selectHotelCategory(int num);
	 List<HotelCategory> selectHotelCategoryList();
	 void addHotelPay(HotelPay pay);
	 void erasePointHotelPay(HotelPay pay);
	
}
