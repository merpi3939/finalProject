package site.bluemoon.dao;

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
	
}
