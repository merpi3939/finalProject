package site.bluemoon.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelComment;
import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.mapper.AdminHotelMapper;

@Repository
public class AdminHotelDAOImpl implements AdminHotelDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public HotelReserveDTO selectHotelReserve() {
		return sqlSession.getMapper(AdminHotelMapper.class).selectHotelReserve();
	}

	@Override
	public List<HotelReserveDTO> selectHotelReserveList() {
		return sqlSession.getMapper(AdminHotelMapper.class).selectHotelReserveList();
	}

	@Override
	public int updateHotelReserve(HotelReserveDTO hotelReserve) {
		return sqlSession.getMapper(AdminHotelMapper.class).updateHotelReserve(hotelReserve);
	}

	@Override
	public List<HotelComment> selectHotelReviewList() {
		return sqlSession.getMapper(AdminHotelMapper.class).selectHotelReviewList();
	}

	@Override
	public HotelComment selectHotelReview() {
		return sqlSession.getMapper(AdminHotelMapper.class).selectHotelReview();
	}

	@Override
	public int insertHotelCategory(HotelCategory hotelCategory) {
		return sqlSession.getMapper(AdminHotelMapper.class).insertHotelCategory(hotelCategory);
	}

	@Override
	public int updateHotelCategory(HotelCategory hotelCategory) {
		return sqlSession.getMapper(AdminHotelMapper.class).updateHotelCategory(hotelCategory);
	}

}
