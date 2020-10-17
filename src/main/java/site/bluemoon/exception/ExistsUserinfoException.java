package site.bluemoon.exception;

//회원정보가 이미 존재할 경우 발생되는 예외 클래스
// => 예외 클래스는 Exception 클래스를 상속받아 작성
public class ExistsUserinfoException extends Exception {
	private static final long serialVersionUID = 1L;
	
	public ExistsUserinfoException() {
	}
	
	public ExistsUserinfoException(String message) {
		super(message);
	}
}
