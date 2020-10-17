package site.bluemoon.dao;

import java.util.Map;

import site.bluemoon.dto.User;

public interface UserDAO {
	int insertUser(User user);
	String selectUserPhone(Map<String, Object> userCheck);
	User selectUserId(String userId);
}
