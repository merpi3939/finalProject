package site.bluemoon.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.bluemoon.dao.HotelReserveDAO;
import site.bluemoon.dto.HotelReserveDTO;
@Service
public class HotelReserveServiceImpl implements HotelReserveService{
	@Autowired
	private HotelReserveDAO hotelReserveDAO;

	@Override
	public void addHotelReserve(HotelReserveDTO reserve) {
		hotelReserveDAO.insertReserveHotel(reserve);
		
	}

	


}
