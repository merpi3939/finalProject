package site.bluemoon.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.bluemoon.dto.AdminOceanNews;
import site.bluemoon.dto.User;
import site.bluemoon.mapper.AdminUserMapper;

@Repository
public class AdminUserDAOImpl implements AdminUserDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<User> selectUserList() {
		return sqlSession.getMapper(AdminUserMapper.class).selectUserList();
	}

	@Override
	public User selectUserId(int userNo) {
		return sqlSession.getMapper(AdminUserMapper.class).selectUserId(userNo);
	}

	@Override
	public int updateUserInfo(User user) {
		return sqlSession.getMapper(AdminUserMapper.class).updateUserInfo(user);
	}

	@Override
	public AdminOceanNews selectJoinQty() {
		return sqlSession.getMapper(AdminUserMapper.class).selectJoinQty();
	}
}