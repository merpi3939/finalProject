package site.bluemoon.mapper;

import java.util.List;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelPay;
import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.dto.User;

public interface HotelMapper {
	 int insertReserveHotel(HotelReserveDTO reserve);
	 public HotelCategory selectHotelCategory(int num);
	 List<HotelCategory> selectHotelCategoryList();
	 int insertHotelPay(HotelPay pay);
	 HotelPay selectPayNo(int payNo);
	 int updateUserPointPlus(User user);
	 int updatePointUserMinus(User user);
	 //List<HotelReserveDTO> selectAllList(int no);
	 List<HotelReserveDTO> selectMemreserve(int num);
	 int removePay(HotelPay pay);
	 int removeReserve(HotelReserveDTO reserve);
	 
}
