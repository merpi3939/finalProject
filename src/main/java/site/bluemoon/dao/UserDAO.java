package site.bluemoon.dao;

import java.util.List;
import java.util.Map;

import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.dto.OceanReservationDTO;
import site.bluemoon.dto.User;

public interface UserDAO {
	int insertUser(User user);
	User selectUserId(String userId);
	int updateUserLoginDate(String userId);
	int updateUserInfo(User user);
	User selectUserFind(Map<String, Object> user);
	int deleteUser(String userId);
	List<OceanReservationDTO> selectUserWater(int userNo);
	List<HotelReserveDTO> selectUserHotel(int userNo);
}
