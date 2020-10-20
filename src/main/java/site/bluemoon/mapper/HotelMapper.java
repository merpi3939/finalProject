package site.bluemoon.mapper;

import java.util.List;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelReserveDTO;

public interface HotelMapper {
 int insertReserveHotel(HotelReserveDTO reserve);
 int selectHotelCategory(int num);
 List<HotelCategory> selectHotelCategoryList();
 
}
