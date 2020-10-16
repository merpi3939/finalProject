package site.bluemoon.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.bluemoon.dao.UserDAO;
import site.bluemoon.dto.User;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDAO userDao;
	
	@Transactional
	@Override
	public void addUser(User user) {
		userDao.insertUser(user);
	}

}
