package site.bluemoon.util;

import java.util.UUID;

public class NewPassword {
	public static String newPassword() {
		return UUID.randomUUID().toString().replace("-", "").substring(0,10).toUpperCase();
	}
}
