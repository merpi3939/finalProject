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

	@Override
	public List<User> getSelectUserList() {
		return adminUserDAO.selectUserList();
	}
	@Override
	public User getUpdateUserInfo(int userNo) {
		return adminUserDAO.updateUserInfo(userNo);
	}
}
