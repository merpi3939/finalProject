package site.bluemoon.dao;

import java.util.List;

import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.User;
import site.bluemoon.mapper.UserMapper;

public interface AdminUserDAO {

	int updateUserInfo(User user);
	List<User>	selectUserList();
	User selectUserId(int userNo);
}
