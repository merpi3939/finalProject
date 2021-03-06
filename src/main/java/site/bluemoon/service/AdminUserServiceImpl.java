package site.bluemoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.bluemoon.dao.AdminUserDAO;
import site.bluemoon.dto.AdminOceanNews;
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
	public User getSelectUserId(int userNo) {
		return adminUserDAO.selectUserId(userNo);
	}

	@Override
	public void modifyUser(User user) {
		adminUserDAO.updateUserInfo(user);
	}

	@Override
	public AdminOceanNews getSelectJoinQty() {
		return adminUserDAO.selectJoinQty();
	}
}
