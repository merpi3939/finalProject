package blumoon.utility;

public class Utility {
	//JSON �ؽ�Ʈ�� ���޹޾� �ڹ� ��ũ��Ʈ ��ü�� ������ ǥ�� �Ұ����� 
	//���ڸ� ȸ�ǹ���(Escape Character)�� ��ȯ�Ͽ� ��ȯ�ϴ� �޼ҵ�
	public static String toJSON(String source) {
		return source.replace("\\", "\\\\").replace("\"", "\\\"")
				.replace("\n","\\n").replace("\r\n", "\\n");
		//�����쿡�� ������� ���ʹ� \r\n��.
	}

}
