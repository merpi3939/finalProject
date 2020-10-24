package site.bluemoon.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.dto.OceanReservationDTO;
import site.bluemoon.dto.User;
import site.bluemoon.mapper.UserMapper;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insertUser(User user) {
		return sqlSession.getMapper(UserMapper.class).insertUser(user);
	}

	@Override
	public User selectUserId(String userId) {
		return sqlSession.getMapper(UserMapper.class).selectUserId(userId);
	}

	@Override
	public int updateUserLoginDate(String userId) {
		return sqlSession.getMapper(UserMapper.class).updateUserLoginDate(userId);
	}

	@Override
	public int updateUserInfo(User user) {
		return sqlSession.getMapper(UserMapper.class).updateUserInfo(user);
	}

	@Override
	public User selectUserFind(Map<String, Object> user) {
		return sqlSession.getMapper(UserMapper.class).selectUserFind(user);
	}

	@Override
	public int deleteUser(String userId) {
		return sqlSession.getMapper(UserMapper.class).deleteUser(userId);
	}

	@Override
	public List<OceanReservationDTO> selectUserWater(int userNo) {
		return sqlSession.getMapper(UserMapper.class).selectUserWater(userNo);
	}

	@Override
	public List<HotelReserveDTO> selectUserHotel(int userNo) {
		return sqlSession.getMapper(UserMapper.class).selectUserHotel(userNo);
	}
	
}
