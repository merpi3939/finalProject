package site.bluemoon.dao;

import java.util.List;

import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.User;

public interface AdminUserDAO {
/*
	int insertUser(User user);
	int updateUserInfo(User user);
	int deleteUser(int userNo);
	User selectUserId(int userNo);
*/
	List<User>	selectUserList();
}