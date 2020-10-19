package site.bluemoon.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.bluemoon.dto.OceanReservationDTO;
import site.bluemoon.mapper.OceanMapper;

@Repository
public class OceanDAOImpl implements OceanDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertOceanReservation(OceanReservationDTO oceanReservation) {
		return sqlSession.getMapper(OceanMapper.class).insertOceanReservation(oceanReservation);
	}
	
}
