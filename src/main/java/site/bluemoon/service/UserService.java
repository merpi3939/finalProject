package site.bluemoon.service;

import java.util.Map;

import site.bluemoon.dto.User;
import site.bluemoon.exception.LoginAuthFailException;
import site.bluemoon.exception.UserinfoExistsException;
import site.bluemoon.exception.UserinfoNotFoundException;

public interface UserService {
	void addUser(User user) throws UserinfoExistsException;
	User selectUserId(String userId) throws UserinfoNotFoundException;
	void updateUserLoginDate(String userId) throws UserinfoNotFoundException;
	void updateUserInfo(User user) throws UserinfoNotFoundException;
	void loginAuth(User user) throws LoginAuthFailException;
	User checkUser(Map<String, Object> user) throws UserinfoNotFoundException;
	void removeUser(String userId) throws UserinfoNotFoundException;
	void updatePassUser(User user) throws UserinfoNotFoundException;
}
