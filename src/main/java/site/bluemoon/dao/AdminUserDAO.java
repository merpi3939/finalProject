package site.bluemoon.dao;

import java.util.List;

import site.bluemoon.dto.AdminOceanNews;
import site.bluemoon.dto.User;

public interface AdminUserDAO {

	int updateUserInfo(User user);
	List<User>	selectUserList();
	User selectUserId(int userNo);
	AdminOceanNews selectJoinQty();
}
