package site.bluemoon.service;

import java.util.List;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelComment;
import site.bluemoon.dto.HotelPay;
import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.dto.User;

public interface HotelService {
	void addHotelReserve(HotelReserveDTO reserve);
	public HotelCategory selectHotelCategory(int num);
	 List<HotelCategory> selectHotelCategoryList();
	 void addHotelPay(HotelPay pay);
	 void erasePointHotelPay(User user);
	 public HotelReserveDTO selectMemreserve(int num);
	 void deletePay(HotelPay pay);
	 void deleteReserve(HotelReserveDTO reserve);
	 int selectReserveNo();
	 public List<HotelComment> selecthotelComment(int no);
	
}
