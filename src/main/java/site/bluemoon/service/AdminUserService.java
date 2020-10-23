package site.bluemoon.service;

import java.util.List;

import site.bluemoon.dto.User;

public interface AdminUserService {

	void modifyUser(User user);
	List<User> getSelectUserList();
	User getSelectUserId(int userNo);
	
}

