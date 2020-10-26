package site.bluemoon.dto;

public class HotelPay {
	private int hotelPayNo;
	private int hotelPayMemno;
	private String hotelPayment;
	private int hotelPayPrice;
	private int hotelPayState;
	private int hotelPayMempoint;
	private String hotelPayDate;
	private int usePoint;
	
	public HotelPay() {
		// TODO Auto-generated constructor stub
	}

	public int getHotelPayNo() {
		return hotelPayNo;
	}

	public int getUserPoint() {
		return usePoint;
	}

	public void setUserPoint(int userPoint) {
		this.usePoint = userPoint;
	}

	public void setHotelPayNo(int hotelPayNo) {
		this.hotelPayNo = hotelPayNo;
	}

	public int getHotelPayMemno() {
		return hotelPayMemno;
	}

	public void setHotelPayMemno(int hotelPayMemno) {
		this.hotelPayMemno = hotelPayMemno;
	}

	

	public String getHotelPayment() {
		return hotelPayment;
	}

	public void setHotelPayment(String hotelPayment) {
		this.hotelPayment = hotelPayment;
	}

	public int getHotelPayState() {
		return hotelPayState;
	}

	public void setHotelPayState(int hotelPayState) {
		this.hotelPayState = hotelPayState;
	}

	public int gethotelPayMempoint() {
		return hotelPayMempoint;
	}

	public void sethotelPayMempoint(int hotelPayMempoint) {
		this.hotelPayMempoint = hotelPayMempoint;
	}

	public String getHotelPayDate() {
		return hotelPayDate;
	}

	public void setHotelPayDate(String hotelPayDate) {
		this.hotelPayDate = hotelPayDate;
	}

	public int getHotelPayPrice() {
		return hotelPayPrice;
	}

	public void setHotelPayPrice(int hotelPayPrice) {
		this.hotelPayPrice = hotelPayPrice;
	}
	
	

}
