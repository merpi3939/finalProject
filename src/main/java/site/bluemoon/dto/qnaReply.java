package site.bluemoon.dto;
/*
QNA_QP_NO        NUMBER        
QNA_BD_NO        NUMBER        
QNA_USER_ID      VARCHAR2(20)  
QNA_RP_CONT      VARCHAR2(500) 
QNA_RP_DATE      DATE          
QNA_INFO_NAME    VARCHAR2(20)  
*/
public class qnaReply {
	private int qnaQpNo;
	private int qnaBdNo;
	private String qnaRpCont;
	private String qnaRpDate;
	private String qnaInfoName;
	
	public qnaReply() {
		// TODO Auto-generated constructor stub
	}

	public int getQnaQpNo() {
		return qnaQpNo;
	}

	public void setQnaQpNo(int qnaQpNo) {
		this.qnaQpNo = qnaQpNo;
	}

	public int getQnaBdNo() {
		return qnaBdNo;
	}

	public void setQnaBdNo(int qnaBdNo) {
		this.qnaBdNo = qnaBdNo;
	}

	public String getQnaRpCont() {
		return qnaRpCont;
	}

	public void setQnaRpCont(String qnaRpCont) {
		this.qnaRpCont = qnaRpCont;
	}

	public String getQnaRpDate() {
		return qnaRpDate;
	}

	public void setQnaRpDate(String qnaRpDate) {
		this.qnaRpDate = qnaRpDate;
	}

	public String getQnaInfoName() {
		return qnaInfoName;
	}

	public void setQnaInfoName(String qnaInfoName) {
		this.qnaInfoName = qnaInfoName;
	}
	
	
}
