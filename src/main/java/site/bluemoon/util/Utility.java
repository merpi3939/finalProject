package site.bluemoon.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Pattern;

public class Utility {
	public static String stripTag(String source) {
		Pattern htmlTag=Pattern.compile("\\<.*?\\>",Pattern.CASE_INSENSITIVE);			
		source=htmlTag.matcher(source).replaceAll("");
		
		return source;
	}
	
	public static String encrypt(String source) {
		String password="";
		try {
			MessageDigest md=MessageDigest.getInstance("SHA-256");				
			md.update(source.getBytes());				
			byte[] digest=md.digest();
			
			for(int i=0;i<digest.length;i++) {
				password+=Integer.toHexString(digest[i]&0xff);
			}
		} catch (NoSuchAlgorithmException e) {
			System.out.println("[����]�߸��� ��ȣȭ �˰����� ��� �Ͽ����ϴ�.");
		}
		return password;
	}
}
