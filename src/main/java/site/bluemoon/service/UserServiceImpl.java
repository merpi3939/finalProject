package site.bluemoon.service;

import java.util.HashMap;
import java.util.Map;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.bluemoon.dao.UserDAO;
import site.bluemoon.dto.User;
import site.bluemoon.exception.LoginAuthFailException;
import site.bluemoon.exception.UserinfoExistsException;
import site.bluemoon.exception.UserinfoNotFoundException;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDAO userDao;
	//회원가입
	@Transactional
	@Override
	public void addUser(User user) throws UserinfoExistsException  {
		if(userDao.selectUserId(user.getUserId())!=null) {
			throw new UserinfoExistsException(user, "사용할 수 없는 아이디 입니다.");
		};
		user.setUserPassword(BCrypt.hashpw(user.getUserPassword(), BCrypt.gensalt()));
		user.setUserPoint(3000);
		user.setUserState(1);
		String userPhone=user.getPhone1()+"-"+user.getPhone2()+"-"+user.getPhone3();
		user.setUserPhone(userPhone);
		
		userDao.insertUser(user);
	}
	//아이디 체크
	@Override
	public User selectUserId(String userId) throws UserinfoNotFoundException {
		User user=userDao.selectUserId(userId);
		
		if(user==null) {
			throw new UserinfoNotFoundException("아이디가 존재하지 않습니다.");
		}
		
		return user;
	}

	//로그인 날짜 수정
	@Transactional
	@Override
	public void updateUserLoginDate(String userId) throws UserinfoNotFoundException {
		
		if(userDao.selectUserId(userId)==null) {
			throw new UserinfoNotFoundException("아이디의 회원 정보가 없습니다");
		};
		userDao.updateUserLoginDate(userId);
	}
	
	//회원수정
	@Transactional
	@Override
	public void updateUserInfo(User user) throws UserinfoNotFoundException {
		if(userDao.selectUserId(user.getUserId())==null) {
			throw new UserinfoNotFoundException("아이디의 회원 정보가 없습니다");
		};
		if(user.getUserPassword()!=null && !user.getUserPassword().equals("")) {
			user.setUserPassword(BCrypt.hashpw(user.getUserPassword(), BCrypt.gensalt()));
		}
		
		String userPhone=user.getPhone1()+"-"+user.getPhone2()+"-"+user.getPhone3();
		user.setUserPhone(userPhone);
		
		Map<String, Object> userCheck=new HashMap<String, Object>();
		userCheck.put("userPhone", userPhone);
		
		User userPh=userDao.selectUserFind(userCheck);
		
		
		if(userPh!=null && !user.getUserId().equals(userPh.getUserId())) {
			throw new UserinfoNotFoundException("이미 사용중인 전화번호 입니다. 다시 입력해주세요");
		}
		userDao.updateUserInfo(user);
		
	}
	
	//로그인
	@Override
	public void loginAuth(User user) throws LoginAuthFailException {
		User userAuth=userDao.selectUserId(user.getUserId());
		
		if(userAuth==null) {
			throw new LoginAuthFailException(user.getUserId(),"아이디의 회원 정보가 없습니다");
		};
		
		if(!BCrypt.checkpw(user.getUserPassword().trim(), userAuth.getUserPassword()) || userAuth.getUserState()==4) {
			System.out.println(user.getUserPassword());
			System.out.println(userAuth.getUserPassword());
			
			throw new LoginAuthFailException(user.getUserId(),"아이디 또는 비밀번호를 잘못 입력 하셨습니다.");
		}
		
	}
	//회원정보찾기
	@Override
	public User checkUser(Map<String, Object> user) throws UserinfoNotFoundException {
		User userCheck=userDao.selectUserFind(user);
		
		if(userCheck==null) {
			throw new UserinfoNotFoundException("회원 정보가 없습니다.");
		}
		return userCheck;
	}

	@Transactional
	@Override
	public void removeUser(String userId) throws UserinfoNotFoundException {
		if(userDao.selectUserId(userId)==null) {
			throw new UserinfoNotFoundException("아이디의 회원 정보가 없습니다");
		};
		userDao.deleteUser(userId);
	}
	@Transactional
	@Override
	public void updatePassUser(User user) throws UserinfoNotFoundException {
		System.out.println(user.getUserPassword());
		if(userDao.selectUserId(user.getUserId())==null) {
			throw new UserinfoNotFoundException("아이디의 회원 정보가 없습니다");
		};
		if(user.getUserPassword()!=null && !user.getUserPassword().equals("")) {
			user.setUserPassword(BCrypt.hashpw(user.getUserPassword(), BCrypt.gensalt()));
		}
		System.out.println(user.getUserPassword());
		userDao.updateUserInfo(user);
	}
}
