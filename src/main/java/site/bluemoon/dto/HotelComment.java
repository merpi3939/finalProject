package site.bluemoon.dto;
/*
이름              널?       유형             
--------------- -------- -------------- 
COMMENT_NO      NOT NULL NUMBER         
COMMENT_ROOM             NUMBER         
COMMENT_TITLE            VARCHAR2(100)  
COMMENT_MEMNO            NUMBER         
COMMENT_CONTENT          VARCHAR2(4000) 
COMMENT_DATE             DATE           
COMMENT_STATE            NUMBER(1)      
 
*/
public class HotelComment {

	private int commentNo;
	private int commentRoom;
	private String commentTitle;
	private int commentMemno;
	private String commentContent;
	private String commentDate;
	private String commentState;
	
	public HotelComment() {
		// TODO Auto-generated constructor stub
	}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public int getCommentRoom() {
		return commentRoom;
	}

	public void setCommentRoom(int commentRoom) {
		this.commentRoom = commentRoom;
	}

	public String getCommentTitle() {
		return commentTitle;
	}

	public void setCommentTitle(String commentTitle) {
		this.commentTitle = commentTitle;
	}

	public int getCommentMemno() {
		return commentMemno;
	}

	public void setCommentMemno(int commentMemno) {
		this.commentMemno = commentMemno;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public String getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}

	public String getCommentState() {
		return commentState;
	}

	public void setCommentState(String commentState) {
		this.commentState = commentState;
	}
	
	
}
