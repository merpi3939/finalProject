package site.bluemoon.dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

/*
ÀÌ¸§                ³Î?       À¯Çü            
----------------- -------- ------------- 
USER_NO           NOT NULL NUMBER		    È¸¿ø¹øÈ£        
USER_ID                    VARCHAR2(20)     È¸¿ø¾ÆÀÌµð
USER_PASSWORD              VARCHAR2(200)    È¸¿øÆÐ½º¿öµå
USER_NAME                  VARCHAR2(20)     È¸¿øÀÌ¸§
USER_BIRTHDAY              VARCHAR2(20)     È¸¿ø»ý³â¿ùÀÏ
USER_PHONE                 VARCHAR2(20)     È¸¿øÀüÈ­¹øÈ£
USER_EMAIL                 VARCHAR2(30)     È¸¿øÀÌ¸ÞÀÏ
USER_SEX                   VARCHAR2(10)  	È¸¿ø¼ºº°
USER_ZIPCODE               VARCHAR2(10)  	È¸¿ø¿ìÆí¹øÈ£ null°¡´É
USER_ADDRESS1              VARCHAR2(200) 	È¸¿øÁÖ¼Ò1 null°¡´É
USER_ADDRESS2              VARCHAR2(100) 	È¸¿øÁÖ¼Ò2 null°¡´É
USER_POINT                 NUMBER        	È¸¿øÆ÷ÀÎÆ® 3000p(±âº»°ª)
USER_JOINDATE              DATE          	È¸¿ø°¡ÀÔ³¯Â¥ sysdate
USER_LOGINDATE             DATE          	È¸¿ø·Î±×ÀÎ³¯Â¥ sysdate
USER_WITHDROWDATE          DATE          	È¸¿øÅ»Åð³¯Â¥ null(±âº»°ª)
USER_STATE                 NUMBER(1)		È¸¿ø»óÅÂ 1.ÀÏ¹ÝÈ¸¿ø(±âº»°ª) 4.Å»ÅðÈ¸¿ø 9.°ü¸®ÀÚ
*/
 
public class User {
	private int userNo;
	@Pattern(regexp = "^[a-zA-Z]\\w{5,19}$", message = "¾ÆÀÌµð¸¦ Çü½Ä¿¡ ¸Â°Ô ÀÔ·ÂÇØ ÁÖ¼¼¿ä.")
	private String userId;
	@Pattern(regexp = "^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$", message = "ºñ¹Ð¹øÈ£¸¦ Çü½Ä¿¡ ¸Â°Ô ÀÔ·ÂÇØ ÁÖ¼¼¿ä.")
	private String userPassword;
	@Pattern(regexp = "^[°¡-ÆR]{2,15}$", message = "ÀÌ¸§À» Çü½Ä¿¡ ¸Â°Ô ÀÔ·ÂÇØ ÁÖ¼¼¿ä.")
	private String userName;
	private String userBirthday;
	private String userPhone;
	@NotEmpty(message = "ÀÌ¸ÞÀÏÀ» ÀÔ·ÂÇØ ÁÖ¼¼¿ä.")
	@Email(message = "ÀÌ¸ÞÀÏÀ» Çü½Ä¿¡ ¸Â°Ô ÀÔ·ÂÇØ ÁÖ¼¼¿ä.")
	private String userEmail;
	private String userSex;
	private String userZipcode;
	private String userAddress1;
	private String userAddress2;
	private int userPoint;
	private String userJoindate;
	private String userLogindate;
	private String userWithdrowdate;
	private int userState;
	
	private String phone1;
	private String phone2;
	private String phone3;
	
	public User() {
		// TODO Auto-generated constructor stub
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserBirthday() {
		return userBirthday;
	}

	public void setUserBirthday(String userBirthday) {
		this.userBirthday = userBirthday;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public String getUserZipcode() {
		return userZipcode;
	}

	public void setUserZipcode(String userZipcode) {
		this.userZipcode = userZipcode;
	}

	public String getUserAddress1() {
		return userAddress1;
	}

	public void setUserAddress1(String userAddress1) {
		this.userAddress1 = userAddress1;
	}

	public String getUserAddress2() {
		return userAddress2;
	}

	public void setUserAddress2(String userAddress2) {
		this.userAddress2 = userAddress2;
	}

	public int getUserPoint() {
		return userPoint;
	}

	public void setUserPoint(int userPoint) {
		this.userPoint = userPoint;
	}

	public String getUserJoindate() {
		return userJoindate;
	}

	public void setUserJoindate(String userJoindate) {
		this.userJoindate = userJoindate;
	}

	public String getUserLogindate() {
		return userLogindate;
	}

	public void setUserLogindate(String userLogindate) {
		this.userLogindate = userLogindate;
	}

	public String getUserWithdrowdate() {
		return userWithdrowdate;
	}

	public void setUserWithdrowdate(String userWithdrowdate) {
		this.userWithdrowdate = userWithdrowdate;
	}

	public int getUserState() {
		return userState;
	}

	public void setUserState(int userState) {
		this.userState = userState;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getPhone3() {
		return phone3;
	}

	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}
	
	
	
}