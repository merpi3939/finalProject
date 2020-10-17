package site.bluemoon.service;

import java.util.Map;

import site.bluemoon.dto.User;

public interface UserService {
	void addUser(User user);
	String checkPhone(Map<String, Object> userCheck);
	User selectUserId(String userId);
}
