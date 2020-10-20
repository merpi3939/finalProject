package site.bluemoon.dto;
/*
이름                       널?       유형            
------------------------ -------- ------------- 
HOTEL_CATEGORY_NO        NOT NULL NUMBER        
HOTEL_CATEGORY_NAME               VARCHAR2(50)  
HOTEL_CATEGORY_DETAILIMG          VARCHAR2(100) 
HOTEL_CATEGORY_THUMBNAIL          VARCHAR2(100) 
HOTEL_CATEGORY_PRICE              NUMBER        

*/
public class HotelCategory {
	private int hotelCategoryNo;
	private String hotelCategoryName;
	private String hotelCategoryDetailimg;
	private String hotelCategoryThumbnail;
	private String hotelCategoryPrice;
	
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

	public String getHotelCategoryDetailimg() {
		return hotelCategoryDetailimg;
	}

	public void setHotelCategoryDetailimg(String hotelCategoryDetailimg) {
		this.hotelCategoryDetailimg = hotelCategoryDetailimg;
	}

	public String getHotelCategoryThumbnail() {
		return hotelCategoryThumbnail;
	}

	public void setHotelCategoryThumbnail(String hotelCategoryThumbnail) {
		this.hotelCategoryThumbnail = hotelCategoryThumbnail;
	}

	public String getHotelCategoryPrice() {
		return hotelCategoryPrice;
	}

	public void setHotelCategoryPrice(String hotelCategoryPrice) {
		this.hotelCategoryPrice = hotelCategoryPrice;
	}
	
	

}
