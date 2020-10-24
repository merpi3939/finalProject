package site.bluemoon.dto;
/*�̸�                 ��?       ����            
------------------ -------- ------------- 
RESERVE_NO         NOT NULL NUMBER        
RESERVE_DATE                DATE          
RESERVE_CHECK_IN            DATE          
RESERVE_CHECK_OUT          DATE          
RESERVE_MEMNO               NUMBER        
RESERVE_ROOM                NUMBER        
RESERVE_MEMPHONE            VARCHAR2(20)  
RESERVE_MEMEMAIL            VARCHAR2(100) 
RESERVE_PRICE               NUMBER        
RESERVE_STATE               NUMBER  */
public class HotelReserveDTO {
	private int reserveNo;
	private String reserveDate;
	private String reserveCheckIn;
	private String reserveCheckOut;
	private int reserveMemno;
	private int reserveRoom;	
	private String reserveperson;		
	private String reserveMemname;
	private String reserveMemphone;
	private String reserveMememail;
	private int reservePrice;
	private int reserveState;
	private String hotelCategoryName;
	
	
	public String getReserveperson() {
		return reserveperson;
	}

	public void setReserveperson(String reserveperson) {
		this.reserveperson = reserveperson;
	}

	public String getReserveMemname() {
		return reserveMemname;
	}

	public void setReserveMemname(String reserveMemname) {
		this.reserveMemname = reserveMemname;
	}

	public int getReserveNo() {
		return reserveNo;
	}

	public void setReserveNo(int reserveNo) {
		this.reserveNo = reserveNo;
	}

	public String getReserveDate() {
		return reserveDate;
	}

	public void setReserveDate(String reserveDate) {
		this.reserveDate = reserveDate;
	}

	public String getReserveCheckIn() {
		return reserveCheckIn;
	}

	public void setReserveCheckIn(String reserveCheckIn) {
		this.reserveCheckIn = reserveCheckIn;
	}

	public String getReserveCheckOut() {
		return reserveCheckOut;
	}

	public void setReserveCheckOut(String reserveCheckOut) {
		this.reserveCheckOut = reserveCheckOut;
	}

	public int getReserveMemno() {
		return reserveMemno;
	}

	public void setReserveMemno(int reserveMemno) {
		this.reserveMemno = reserveMemno;
	}

	public int getReserveRoom() {
		return reserveRoom;
	}

	public void setReserveRoom(int reserveRoom) {
		this.reserveRoom = reserveRoom;
	}

	public String getReserveMemphone() {
		return reserveMemphone;
	}

	public void setReserveMemphone(String reserveMemphone) {
		this.reserveMemphone = reserveMemphone;
	}

	public String getReserveMememail() {
		return reserveMememail;
	}

	public void setReserveMememail(String reserveMememail) {
		this.reserveMememail = reserveMememail;
	}

	public int getReservePrice() {
		return reservePrice;
	}

	public void setReservePrice(int reservePrice) {
		this.reservePrice = reservePrice;
	}

	public int getReserveState() {
		return reserveState;
	}

	public void setReserveState(int reserveState) {
		this.reserveState = reserveState;
	}

	public String getHotelCategoryName() {
		return hotelCategoryName;
	}

	public void setHotelCategoryName(String hotelCategoryName) {
		this.hotelCategoryName = hotelCategoryName;
	}
	
	
	
}
