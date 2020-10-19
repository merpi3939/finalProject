package site.bluemoon.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.mapper.HotelReserveMapper;
@Repository
public class HotelReserveDAOImpl implements HotelReserveDAO{
	@Autowired
	private SqlSession sqlSession;
	@Override
	public int insertReserveHotel(HotelReserveDTO reserve) {
		return sqlSession.getMapper(HotelReserveMapper.class).insertReserveHotel(reserve);
	}

}
