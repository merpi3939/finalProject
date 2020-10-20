package site.bluemoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.bluemoon.dao.HotelDAO;
import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelReserveDTO;
@Service
public class HotelServiceImpl implements HotelService{
	@Autowired
	private HotelDAO hotelReserveDAO;

	@Override
	public void addHotelReserve(HotelReserveDTO reserve) {
		hotelReserveDAO.insertReserveHotel(reserve);
		
	}

	@Override
	public HotelCategory selectHotelCategory(int num) {
		return hotelReserveDAO.selectHotelCategory(num);
	}

	@Override
	public List<HotelCategory> selectHotelCategoryList() {
		return hotelReserveDAO.selectHotelCategoryList();
	}

	


}
