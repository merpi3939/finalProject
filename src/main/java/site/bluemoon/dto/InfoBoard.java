package site.bluemoon.dto;

/*
�̸�             ��?       ����             
-------------- -------- -------------- 
INFO_NO        NOT NULL NUMBER         
INFO_USER_ID            VARCHAR2(20)   
INFO_USER_NAME          VARCHAR2(50)   
INFO_TITLE              VARCHAR2(500)  
INFO_CONTENT            VARCHAR2(2000) 
INFO_DATE               DATE           
INFO_DIVI               VARCHAR2(30)   
INFO_NAME               VARCHAR2(30)   
INFO_IMG                VARCHAR2(500)  
INFO_STATE              NUMBER(1)      
INFO_COUNT              NUMBER   
*/
public class InfoBoard {
	private int infoNo;
	private String infoUserId;
	private String infoUserName;
	private String infoTitle;
	private String infoContent;
	private String infoDate;
	private String infoDivi;
	private String infoName;
	private String infoImg;
	private String infoState;
	private String infoCount;
	
	public InfoBoard() {
		// TODO Auto-generated constructor stub
	}

	public int getInfoNo() {
		return infoNo;
	}

	public void setInfoNo(int infoNo) {
		this.infoNo = infoNo;
	}

	public String getInfoUserId() {
		return infoUserId;
	}

	public void setInfoUserId(String infoUserId) {
		this.infoUserId = infoUserId;
	}

	public String getInfoUserName() {
		return infoUserName;
	}

	public void setInfoUserName(String infoUserName) {
		this.infoUserName = infoUserName;
	}

	public String getInfoTitle() {
		return infoTitle;
	}

	public void setInfoTitle(String infoTitle) {
		this.infoTitle = infoTitle;
	}

	public String getInfoContent() {
		return infoContent;
	}

	public void setInfoContent(String infoContent) {
		this.infoContent = infoContent;
	}

	public String getInfoDate() {
		return infoDate;
	}

	public void setInfoDate(String infoDate) {
		this.infoDate = infoDate;
	}

	public String getInfoDivi() {
		return infoDivi;
	}

	public void setInfoDivi(String infoDivi) {
		this.infoDivi = infoDivi;
	}

	public String getInfoName() {
		return infoName;
	}

	public void setInfoName(String infoName) {
		this.infoName = infoName;
	}

	public String getInfoImg() {
		return infoImg;
	}

	public void setInfoImg(String infoImg) {
		this.infoImg = infoImg;
	}

	public String getInfoState() {
		return infoState;
	}

	public void setInfoState(String infoState) {
		this.infoState = infoState;
	}

	public String getInfoCount() {
		return infoCount;
	}

	public void setInfoCount(String infoCount) {
		this.infoCount = infoCount;
	}
	
}
