package blumoon.utility;

public class Utility {
	//JSON 텍스트를 전달받아 자바 스크립트 객체의 값으로 표현 불가능한 
	//문자를 회피문자(Escape Character)로 변환하여 반환하는 메소드
	public static String toJSON(String source) {
		return source.replace("\\", "\\\\").replace("\"", "\\\"")
				.replace("\n","\\n").replace("\r\n", "\\n");
		//윈도우에서 만들어진 엔터는 \r\n임.
	}

}
