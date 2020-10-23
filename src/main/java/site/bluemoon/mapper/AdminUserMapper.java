package site.bluemoon.mapper;

import java.util.List;

import site.bluemoon.dto.User;

public interface AdminUserMapper {
	
	int updateUserInfo(User user);
	User selectUserId(int userNo);
	List<User>	selectUserList();
}
