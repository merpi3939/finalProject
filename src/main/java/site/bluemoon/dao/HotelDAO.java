package site.bluemoon.dao;

import java.util.List;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelPay;
import site.bluemoon.dto.HotelReserveDTO;

public interface HotelDAO {
	 int insertReserveHotel(HotelReserveDTO reserve);
	 public HotelCategory selectHotelCategory(int num);
	 List<HotelCategory> selectHotelCategoryList();
	 int insertHotelPay(HotelPay pay);
}
