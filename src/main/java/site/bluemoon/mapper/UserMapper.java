package site.bluemoon.mapper;

import java.util.Map;

import site.bluemoon.dto.User;

public interface UserMapper {
	int insertUser(User user);
	String selectUserPhone(Map<String, Object> user);
	User selectUserId(String userId);
}
