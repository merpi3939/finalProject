package site.bluemoon.exception;

public class LoginAuthFailException extends Exception {
	private static final long serialVersionUID = 1L;

	private String userId;
	
	public LoginAuthFailException() {
		// TODO Auto-generated constructor stub
	}

	public LoginAuthFailException(String userId, String message) {
		super(message);
		this.userId = userId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
}
