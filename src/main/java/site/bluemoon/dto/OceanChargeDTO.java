package site.bluemoon.dto;

/*
 이름        널        유형             
--------- -------- -------------- 
CG_NO     		NOT NULL		 NUMBER         
CG_NAME        					  VARCHAR2(1000) 
CG_SEASON          				  VARCHAR2(1000) 
CG_PRICE              				  NUMBER 

CG_NO_SEQ
 */
public class OceanChargeDTO {
	private int cgNo;
	private String cgName;
	private String cgSeason;
	private int cgPrice;

	public OceanChargeDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getCgNo() {
		return cgNo;
	}

	public void setCgNo(int cgNo) {
		this.cgNo = cgNo;
	}

	public String getCgName() {
		return cgName;
	}

	public void setCgName(String cgName) {
		this.cgName = cgName;
	}

	public String getCgSeason() {
		return cgSeason;
	}

	public void setCgSeason(String cgSeason) {
		this.cgSeason = cgSeason;
	}

	public int getCgPrice() {
		return cgPrice;
	}

	public void setCgPrice(int cgPrice) {
		this.cgPrice = cgPrice;
	}
	
	
	
	
}//

