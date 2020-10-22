package site.bluemoon.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.User;
import site.bluemoon.mapper.AdminUserMapper;
import site.bluemoon.mapper.AdminWaterparkMapper;

@Repository
public class AdminUserDAOImpl implements AdminUserDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<User> selectUserList() {
		return sqlSession.getMapper(AdminUserMapper.class).selectUserList();
	}

	@Override
	public User updateUserInfo(int userNo) {
		return sqlSession.getMapper(AdminUserMapper.class).updateUserInfo(userNo);
	}
}