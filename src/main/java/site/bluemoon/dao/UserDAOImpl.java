package site.bluemoon.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	public String selectUserPhone(Map<String, Object> userCheck) {
		return sqlSession.getMapper(UserMapper.class).selectUserPhone(userCheck);
	}

	@Override
	public User selectUserId(String userId) {
		return sqlSession.getMapper(UserMapper.class).selectUserId(userId);
	}
	
}
