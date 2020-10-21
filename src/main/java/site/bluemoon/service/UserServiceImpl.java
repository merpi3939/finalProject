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
	//ȸ������
	@Transactional
	@Override
	public void addUser(User user) throws UserinfoExistsException  {
		if(userDao.selectUserId(user.getUserId())!=null) {
			throw new UserinfoExistsException(user, "����� �� ���� ���̵� �Դϴ�.");
		};
		user.setUserPassword(BCrypt.hashpw(user.getUserPassword(), BCrypt.gensalt()));
		user.setUserPoint(3000);
		user.setUserState(1);
		String userPhone=user.getPhone1()+"-"+user.getPhone2()+"-"+user.getPhone3();
		user.setUserPhone(userPhone);
		
		userDao.insertUser(user);
	}
	//���̵� üũ
	@Override
	public User selectUserId(String userId) throws UserinfoNotFoundException {
		User user=userDao.selectUserId(userId);
		
		if(user==null) {
			throw new UserinfoNotFoundException("���̵� �������� �ʽ��ϴ�.");
		}
		
		return user;
	}

	//�α��� ��¥ ����
	@Transactional
	@Override
	public void updateUserLoginDate(String userId) throws UserinfoNotFoundException {
		
		if(userDao.selectUserId(userId)==null) {
			throw new UserinfoNotFoundException("���̵��� ȸ�� ������ �����ϴ�");
		};
		userDao.updateUserLoginDate(userId);
	}
	
	//ȸ������
	@Transactional
	@Override
	public void updateUserInfo(User user) throws UserinfoNotFoundException {
		if(userDao.selectUserId(user.getUserId())==null) {
			throw new UserinfoNotFoundException("���̵��� ȸ�� ������ �����ϴ�");
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
			throw new UserinfoNotFoundException("�̹� ������� ��ȭ��ȣ �Դϴ�. �ٽ� �Է����ּ���");
		}
		userDao.updateUserInfo(user);
		
	}
	
	//�α���
	@Override
	public void loginAuth(User user) throws LoginAuthFailException {
		User userAuth=userDao.selectUserId(user.getUserId());
		
		if(userAuth==null) {
			throw new LoginAuthFailException(user.getUserId(),"���̵��� ȸ�� ������ �����ϴ�");
		};
		
		if(!BCrypt.checkpw(user.getUserPassword().trim(), userAuth.getUserPassword()) || userAuth.getUserState()==4) {
			System.out.println(user.getUserPassword());
			System.out.println(userAuth.getUserPassword());
			
			throw new LoginAuthFailException(user.getUserId(),"���̵� �Ǵ� ��й�ȣ�� �߸� �Է� �ϼ̽��ϴ�.");
		}
		
	}
	//ȸ������ã��
	@Override
	public User checkUser(Map<String, Object> user) throws UserinfoNotFoundException {
		User userCheck=userDao.selectUserFind(user);
		
		if(userCheck==null) {
			throw new UserinfoNotFoundException("ȸ�� ������ �����ϴ�.");
		}
		return userCheck;
	}

	@Transactional
	@Override
	public void removeUser(String userId) throws UserinfoNotFoundException {
		if(userDao.selectUserId(userId)==null) {
			throw new UserinfoNotFoundException("���̵��� ȸ�� ������ �����ϴ�");
		};
		userDao.deleteUser(userId);
	}
	@Transactional
	@Override
	public void updatePassUser(User user) throws UserinfoNotFoundException {
		System.out.println(user.getUserPassword());
		if(userDao.selectUserId(user.getUserId())==null) {
			throw new UserinfoNotFoundException("���̵��� ȸ�� ������ �����ϴ�");
		};
		if(user.getUserPassword()!=null && !user.getUserPassword().equals("")) {
			user.setUserPassword(BCrypt.hashpw(user.getUserPassword(), BCrypt.gensalt()));
		}
		System.out.println(user.getUserPassword());
		userDao.updateUserInfo(user);
	}
}
