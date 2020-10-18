package site.bluemoon.service;

import java.util.Map;

import site.bluemoon.dto.User;
import site.bluemoon.exception.ExistsUserinfoException;

public interface UserService {
	void addUser(User user) throws ExistsUserinfoException;
	String checkPhone(Map<String, Object> userCheck);
	User selectUserId(String userId);
	void updateUserLoginDate(String userId) throws ExistsUserinfoException;
}
