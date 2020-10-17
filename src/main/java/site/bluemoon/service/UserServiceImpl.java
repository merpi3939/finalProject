package site.bluemoon.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.bluemoon.dao.UserDAO;
import site.bluemoon.dto.User;
import site.bluemoon.exception.ExistsUserinfoException;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDAO userDao;
	
	@Transactional
	@Override
	public void addUser(User user) {
		userDao.insertUser(user);
	}

	@Override
	public String checkPhone(Map<String, Object> userCheck) {
		return userDao.selectUserPhone(userCheck);
	}

	@Override
	public User selectUserId(String userId) {
		return userDao.selectUserId(userId);
	}

}
