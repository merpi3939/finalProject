package site.bluemoon.exception;

//ȸ�������� �̹� ������ ��� �߻��Ǵ� ���� Ŭ����
// => ���� Ŭ������ Exception Ŭ������ ��ӹ޾� �ۼ�
public class ExistsUserinfoException extends Exception {
	private static final long serialVersionUID = 1L;
	
	public ExistsUserinfoException() {
	}
	
	public ExistsUserinfoException(String message) {
		super(message);
	}
}
