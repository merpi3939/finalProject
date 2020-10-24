package site.bluemoon.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.bluemoon.dto.HotelCategory;
import site.bluemoon.dto.HotelPay;
import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.dto.User;
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
	public HotelCategory selectHotelCategory(int num) {
		return sqlSession.getMapper(HotelMapper.class).selectHotelCategory(num);
	}
	@Override
	public List<HotelCategory> selectHotelCategoryList() {
		return sqlSession.getMapper(HotelMapper.class).selectHotelCategoryList();
	}
	@Override
	public int insertHotelPay(HotelPay pay) {
		return sqlSession.getMapper(HotelMapper.class).insertHotelPay(pay);
	}
	@Override
	public HotelPay selectPayNo(int payNo) {
		return sqlSession.getMapper(HotelMapper.class).selectPayNo(payNo);
	}
	@Override
	public int updateUserPointPlus(User user) {
		return sqlSession.getMapper(HotelMapper.class).updateUserPointPlus(user);
	}
	@Override
	public int updatePointUserMinus(User user) {
		return sqlSession.getMapper(HotelMapper.class).updatePointUserMinus(user);
	}
	@Override
	public List<HotelReserveDTO> selectMemreserve(int num) {
		return sqlSession.getMapper(HotelMapper.class).selectMemreserve(num);
	}
	@Override
	public int removePay(HotelPay pay) {
		return sqlSession.getMapper(HotelMapper.class).removePay(pay);
	}
	@Override
	public int removeReserve(HotelReserveDTO reserve) {
		return sqlSession.getMapper(HotelMapper.class).removeReserve(reserve);
	}


}
