package site.bluemoon.dto;

/*이름        널? 유형     
--------- -- ------ 
ROOM_NO      NUMBER 
ROOM_DATE    DATE  */
public class HotelRoomDTO {
	private int roomNo;
	private String roomDate;
	
	public HotelRoomDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public String getRoomDate() {
		return roomDate;
	}

	public void setRoomDate(String roomDate) {
		this.roomDate = roomDate;
	}
	
	
}
