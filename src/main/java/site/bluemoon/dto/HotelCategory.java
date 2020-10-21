package site.bluemoon.dto;
/*
이름                   널?       유형            
-------------------- -------- ------------- 
HOTEL_CATEGORY_NO    NOT NULL NUMBER        
HOTEL_CATEGORY_NAME           VARCHAR2(100) 
HOTEL_CATEGORY_IMG1           VARCHAR2(100) 
HOTEL_CATEGORY_IMG2           VARCHAR2(100) 
HOTEL_CATEGORY_IMG3           VARCHAR2(100) 
HOTEL_CATEGORY_IMG4           VARCHAR2(100) 
HOTEL_CATEGORY_PRICE NOT NULL NUMBER        
HOTEL_CATEGORY_QTY   NOT NULL NUMBER        

*/
public class HotelCategory {
	private int hotelCategoryNo;
	private String hotelCategoryName;
	private String hotelCategoryPrice;
	private String hotelCategoryImg1;   
	private String hotelCategoryImg2;   
	private String hotelCategoryImg3;   
	private String hotelCategoryImg4;  
	private int hotelCategoryQty;
	
	public HotelCategory() {
		// TODO Auto-generated constructor stub
	}

	public int getHotelCategoryNo() {
		return hotelCategoryNo;
	}

	public void setHotelCategoryNo(int hotelCategoryNo) {
		this.hotelCategoryNo = hotelCategoryNo;
	}

	public String getHotelCategoryName() {
		return hotelCategoryName;
	}

	public void setHotelCategoryName(String hotelCategoryName) {
		this.hotelCategoryName = hotelCategoryName;
	}

	public String getHotelCategoryPrice() {
		return hotelCategoryPrice;
	}

	public void setHotelCategoryPrice(String hotelCategoryPrice) {
		this.hotelCategoryPrice = hotelCategoryPrice;
	}

	public String getHotelCategoryImg1() {
		return hotelCategoryImg1;
	}

	public void setHotelCategoryImg1(String hotelCategoryImg1) {
		this.hotelCategoryImg1 = hotelCategoryImg1;
	}

	public String getHotelCategoryImg2() {
		return hotelCategoryImg2;
	}

	public void setHotelCategoryImg2(String hotelCategoryImg2) {
		this.hotelCategoryImg2 = hotelCategoryImg2;
	}

	public String getHotelCategoryImg3() {
		return hotelCategoryImg3;
	}

	public void setHotelCategoryImg3(String hotelCategoryImg3) {
		this.hotelCategoryImg3 = hotelCategoryImg3;
	}

	public String getHotelCategoryImg4() {
		return hotelCategoryImg4;
	}

	public void setHotelCategoryImg4(String hotelCategoryImg4) {
		this.hotelCategoryImg4 = hotelCategoryImg4;
	}

	public int getHotelCategoryQty() {
		return hotelCategoryQty;
	}

	public void setHotelCategoryQty(int hotelCategoryQty) {
		this.hotelCategoryQty = hotelCategoryQty;
	}
	
	

}
