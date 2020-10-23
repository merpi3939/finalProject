package site.bluemoon.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelComment;
import site.bluemoon.dto.HotelPay;
import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.mapper.AdminHotelMapper;

@Repository
public class AdminHotelDAOImpl implements AdminHotelDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public HotelReserveDTO selectHotelReserve(int reserveNo) {
		return sqlSession.getMapper(AdminHotelMapper.class).selectHotelReserve(reserveNo);
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
	public HotelComment selectHotelReview(int commentNo) {
		return sqlSession.getMapper(AdminHotelMapper.class).selectHotelReview(commentNo);
	}

	@Override
	public int insertHotelCategory(HotelCategory hotelCategory) {
		return sqlSession.getMapper(AdminHotelMapper.class).insertHotelCategory(hotelCategory);
	}

	@Override
	public int updateHotelCategory(HotelCategory hotelCategory) {
		return sqlSession.getMapper(AdminHotelMapper.class).updateHotelCategory(hotelCategory);
	}

	@Override
	public HotelCategory selectHotelCategory(int hotelCategoryNo) {
		return sqlSession.getMapper(AdminHotelMapper.class).selectHotelCategory(hotelCategoryNo);
	}
	
	@Override
	public List<HotelCategory> selectHotelCategoryList() {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(AdminHotelMapper.class).selectHotelCategoryList();
	}
	
	@Override
	public HotelPay selectHotelPay(Map<String, Object> map) {
		return sqlSession.getMapper(AdminHotelMapper.class).selectHotelPay(map);
	}

	@Override
	public int updateHotelPay(HotelPay hotelPay) {
		return sqlSession.getMapper(AdminHotelMapper.class).updateHotelPay(hotelPay);
	}



}
