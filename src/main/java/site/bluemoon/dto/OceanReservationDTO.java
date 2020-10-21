package site.bluemoon.dto;

import javax.validation.constraints.Pattern;

/*
  ÀÌ¸§         ³Î        À¯Çü            
---------- -------- ------------- 
RS_NO      NOT NULL NUMBER        
RS_UNO              NUMBER        
RS_NAME             VARCHAR2(100) 
RS_PHONE            VARCHAR2(100) 
RS_DATE             DATE          
RS_USEDATE          DATE          
RS_TICKET           VARCHAR2(100) 
RS_ADULT            NUMBER        
RS_CHILD            NUMBER        
RS_STATE            VARCHAR2(10)  
RS_PRICE            NUMBER        
PS_OPTION           VARCHAR2(10)

 RS_NO_SEQ
 */
public class OceanReservationDTO {
	private int rsNo;
	private int rsUno;
	@Pattern(regexp = "^[°¡-ÆR]{2,10}$", message = "ÀÌ¸§À» Çü½Ä¿¡ ¸Â°Ô ÀÔ·ÂÇØ ÁÖ¼¼¿ä.")
	private String rsName;
	private String rsPhone;
	private String rsDate;
	private String rsUsedate;
	private String rsTicket;
	private int rsAdult;
	private int rsChild;
	private String rsState;
	private int rsPrice;
	private String rsOption;

	public OceanReservationDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getRsNo() {
		return rsNo;
	}

	public void setRsNo(int rsNo) {
		this.rsNo = rsNo;
	}

	public int getRsUno() {
		return rsUno;
	}

	public void setRsUno(int rsUno) {
		this.rsUno = rsUno;
	}

	public String getRsName() {
		return rsName;
	}

	public void setRsName(String rsName) {
		this.rsName = rsName;
	}

	public String getRsPhone() {
		return rsPhone;
	}

	public void setRsPhone(String rsPhone) {
		this.rsPhone = rsPhone;
	}

	public String getRsDate() {
		return rsDate;
	}

	public void setRsDate(String rsDate) {
		this.rsDate = rsDate;
	}

	public String getRsUsedate() {
		return rsUsedate;
	}

	public void setRsUsedate(String rsUsedate) {
		this.rsUsedate = rsUsedate;
	}

	public String getRsTicket() {
		return rsTicket;
	}

	public void setRsTicket(String rsTicket) {
		this.rsTicket = rsTicket;
	}

	public int getRsAdult() {
		return rsAdult;
	}

	public void setRsAdult(int rsAdult) {
		this.rsAdult = rsAdult;
	}

	public int getRsChild() {
		return rsChild;
	}

	public void setRsChild(int rsChild) {
		this.rsChild = rsChild;
	}

	public String getRsState() {
		return rsState;
	}

	public void setRsState(String rsState) {
		this.rsState = rsState;
	}

	public int getRsPrice() {
		return rsPrice;
	}

	public void setRsPrice(int rsPrice) {
		this.rsPrice = rsPrice;
	}

	public String getRsOption() {
		return rsOption;
	}

	public void setRsOption(String rsOption) {
		this.rsOption = rsOption;
	}
	
}////

