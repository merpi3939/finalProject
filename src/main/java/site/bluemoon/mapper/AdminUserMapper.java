package site.bluemoon.mapper;

import java.util.List;

import site.bluemoon.dto.User;

public interface AdminUserMapper {
	/*
	int insertUser(User user);
	int updateUserInfo(User user);
	int deleteUser(int userNo);
	User selectUserId(int userNo);
	*/
	List<User>	selectUserList();
	User updateUserInfo(int userNo);
}
