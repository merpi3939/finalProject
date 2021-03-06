package site.bluemoon.dao;

import java.util.List;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelComment;
import site.bluemoon.dto.HotelPay;
import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.dto.User;

public interface HotelDAO {
	 int insertReserveHotel(HotelReserveDTO reserve);
	 public HotelCategory selectHotelCategory(int num);
	 List<HotelCategory> selectHotelCategoryList();
	 int insertHotelPay(HotelPay pay);
	 HotelPay selectPayNo(int payNo);
	 int updateUserPointPlus(User user);
	 int updatePointUserMinus(User user);
	 ///List<HotelReserveDTO>selectAllList(int no);
	 public HotelReserveDTO selectMemreserve(int num);
	 int removePay(HotelPay pay);
	 int removeReserve(HotelReserveDTO reserve);
	 int selectReserveNo();
	 public List<HotelComment> hotelComment(int no);
}
