package site.bluemoon.dao;

import java.util.Map;

import site.bluemoon.dto.User;

public interface UserDAO {
	int insertUser(User user);
	User selectUserId(String userId);
	int updateUserLoginDate(String userId);
	int updateUserInfo(User user);
	User selectUserFind(Map<String, Object> user);
	int deleteUser(String userId);
}
