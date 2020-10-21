package site.bluemoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.bluemoon.dao.AdminUserDAO;
import site.bluemoon.dto.User;

@Service
public class AdminUserServiceImpl implements AdminUserService {

	@Autowired
	private AdminUserDAO adminUserDAO;
	/*
	@Override
	public void addUser(User user) {
		adminUserDAO.insertUser(user);
	}

	@Override
	public void modifyUser(User user) {
		adminUserDAO.updateUserInfo(user);
	}

	@Override
	public void RemoveUser(int userNo) {
		adminUserDAO.deleteUser(userNo);
	}

	@Override
	public User getSelectUser(int userNo) {
		return adminUserDAO.selectUserId(userNo);
	}
*/
	@Override
	public List<User> getSelectUserList() {
		return adminUserDAO.selectUserList();
	}
}
