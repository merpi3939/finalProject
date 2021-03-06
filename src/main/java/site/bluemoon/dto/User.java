package site.bluemoon.dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

/*
이름                널?       유형            
----------------- -------- ------------- 
USER_NO           NOT NULL NUMBER		    회원번호        
USER_ID                    VARCHAR2(20)     회원아이디
USER_PASSWORD              VARCHAR2(200)    회원패스워드
USER_NAME                  VARCHAR2(20)     회원이름
USER_BIRTHDAY              VARCHAR2(20)     회원생년월일
USER_PHONE                 VARCHAR2(20)     회원전화번호
USER_EMAIL                 VARCHAR2(30)     회원이메일
USER_SEX                   VARCHAR2(10)  	회원성별
USER_ZIPCODE               VARCHAR2(10)  	회원우편번호 null가능
USER_ADDRESS1              VARCHAR2(200) 	회원주소1 null가능
USER_ADDRESS2              VARCHAR2(100) 	회원주소2 null가능
USER_POINT                 NUMBER        	회원포인트 3000p(기본값)
USER_JOINDATE              DATE          	회원가입날짜 sysdate
USER_LOGINDATE             DATE          	회원로그인날짜 sysdate
USER_WITHDROWDATE          DATE          	회원탈퇴날짜 null(기본값)
USER_STATE                 NUMBER(1)		회원상태 1.일반회원(기본값) 4.탈퇴회원 9.관리자
*/
 
public class User {
	private int userNo;
	@Pattern(regexp = "^[a-zA-Z]\\w{5,19}$", message = "아이디를 형식에 맞게 입력해 주세요.")
	private String userId;
	@Pattern(regexp = "^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$", message = "비밀번호를 형식에 맞게 입력해 주세요.")
	private String userPassword;
	@Pattern(regexp = "^[가-힣]{2,15}$", message = "이름을 형식에 맞게 입력해 주세요.")
	private String userName;
	private String userBirthday;
	private String userPhone;
	@NotEmpty(message = "이메일을 입력해 주세요.")
	@Email(message = "이메일을 형식에 맞게 입력해 주세요.")
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