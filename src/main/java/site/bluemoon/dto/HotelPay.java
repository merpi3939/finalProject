package site.bluemoon.dto;

public class HotelPay {
	private int hotelPayNo;
	private int hotelPayMemno;
	private String hotelPayment;
	private int hotelPayPrice;
	private int hotelPayState;
	private int hotelMempoint;
	private String hotelPayDate;
	
	public HotelPay() {
		// TODO Auto-generated constructor stub
	}

	public int getHotelPayNo() {
		return hotelPayNo;
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

	public String getPayment() {
		return hotelPayment;
	}

	public void setPayment(String payment) {
		this.hotelPayment = payment;
	}

	public int getHotelPayState() {
		return hotelPayState;
	}

	public void setHotelPayState(int hotelPayState) {
		this.hotelPayState = hotelPayState;
	}

	public int getHotelMempoint() {
		return hotelMempoint;
	}

	public void setHotelMempoint(int hotelMempoint) {
		this.hotelMempoint = hotelMempoint;
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
