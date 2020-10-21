package site.bluemoon.mapper;

import java.util.Map;

import site.bluemoon.dto.User;

public interface UserMapper {
	int insertUser(User user);
	User selectUserId(String userId);
	int updateUserInfo(User user);
	int updateUserLoginDate(String userId);
	User selectUserFind(Map<String, Object> user);
	int deleteUser(String userId);
}
