package site.bluemoon.dto;

/*
이름        널        유형             
--------- -------- -------------- 
NEWS_NO   NOT NULL NUMBER         
NEWS_DATE          DATE           
NEWS_CONT          VARCHAR2(3000) 
NEWS_UNO           NUMBER     

NEWS_NO_SEQ	
 */
public class OceanNews {
	private int newsNo;
	private String newsDate;
	private String newsCont;
	private int newsUno;
	
	public OceanNews() {
		// TODO Auto-generated constructor stub
	}

	public int getNewsNo() {
		return newsNo;
	}

	public void setNewsNo(int newsNo) {
		this.newsNo = newsNo;
	}

	public String getNewsDate() {
		return newsDate;
	}

	public void setNewsDate(String newsDate) {
		this.newsDate = newsDate;
	}

	public String getNewsCont() {
		return newsCont;
	}

	public void setNewsCont(String newsCont) {
		this.newsCont = newsCont;
	}

	public int getNewsUno() {
		return newsUno;
	}

	public void setNewsUno(int newsUno) {
		this.newsUno = newsUno;
	}
}
