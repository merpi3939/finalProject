package site.bluemoon.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import site.bluemoon.controller.oceanController;
import site.bluemoon.dto.AdminOceanNews;
import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;
import site.bluemoon.mapper.HotelMapper;
import site.bluemoon.mapper.OceanMapper;

@Repository
public class OceanDAOImpl implements OceanDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	//예약
	@Override
	public int insertOceanReservation(OceanReservationDTO oceanReservation) {
		return sqlSession.getMapper(OceanMapper.class).insertOceanReservation(oceanReservation);
	}
	
	//요금
	@Override
	public OceanChargeDTO selectOceanCharge(int cgNo) {
		return sqlSession.getMapper(OceanMapper.class).selectOceanCharge(cgNo);
	}
	
	@Override
	public List<OceanChargeDTO> selectOceanChargeList() {
		return sqlSession.getMapper(OceanMapper.class).selectOceanChargeList();
	}
	
	//결제
	
	@Override
	public OceanReservationDTO selectOceanPayment(int rsNo) {
		return sqlSession.getMapper(OceanMapper.class).selectOceanPayment(rsNo);
	}
	
	@Override
	public List<OceanReservationDTO> selectOceanPaymentList() {
		return sqlSession.getMapper(OceanMapper.class).selectOceanPaymentList();
	}
	
	//환불	
	
	@Override
	public int updateOcean(OceanReservationDTO updateOcean) {
		return sqlSession.getMapper(OceanMapper.class).updateOcean(updateOcean);
	}
	//생생뉴스	
	@Override
	public List<AdminOceanNews> selectNewsList() {
		return sqlSession.getMapper(OceanMapper.class).selectNewsList();
	}
	
}
