package site.bluemoon.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.mapper.HotelMapper;
@Repository
public class HotelDAOImpl implements HotelDAO{
	@Autowired
	private SqlSession sqlSession;
	@Override
	public int insertReserveHotel(HotelReserveDTO reserve) {
		return sqlSession.getMapper(HotelMapper.class).insertReserveHotel(reserve);
	}
	@Override
	public int selectHotelCategory(int num) {
		return sqlSession.getMapper(HotelMapper.class).selectHotelCategory(num);
	}
	@Override
	public List<HotelCategory> selectHotelCategoryList() {
		return sqlSession.getMapper(HotelMapper.class).selectHotelCategoryList();
	}

}
