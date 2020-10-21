package site.bluemoon.exception;

import site.bluemoon.dto.User;

public class UserinfoExistsException extends Exception {
	private static final long serialVersionUID = 1L;
	private User user;
	
	public UserinfoExistsException() {
		// TODO Auto-generated constructor stub
	}

	public UserinfoExistsException(User user, String message) {
		super(message);
		this.user = user;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}
