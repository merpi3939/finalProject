package site.bluemoon.service;

import java.util.List;

import site.bluemoon.dto.User;

public interface AdminUserService {
/*
	void addUser(User user);
	void modifyUser(User user);
	void RemoveUser(int userNo);
	User getSelectUser(int userNo);
*/
	List<User> getSelectUserList();
}
