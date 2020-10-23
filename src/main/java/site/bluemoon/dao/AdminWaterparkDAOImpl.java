package site.bluemoon.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.bluemoon.dto.AdminOceanNews;
import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;
import site.bluemoon.dto.User;
import site.bluemoon.mapper.AdminWaterparkMapper;

@Repository
public class AdminWaterparkDAOImpl implements AdminWaterparkDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	//°·Waterpark's News DAO
	@Override
	public int insertNews(OceanNews oceanNews) {
		return sqlSession.getMapper(AdminWaterparkMapper.class).insertNews(oceanNews);
	}

	@Override
	public int updateNews(OceanNews oceanNews) {
		return sqlSession.getMapper(AdminWaterparkMapper.class).updateNews(oceanNews);
	}

	@Override
	public int deleteNews(int newsNo) {
		return sqlSession.getMapper(AdminWaterparkMapper.class).deleteNews(newsNo);
	}

	@Override
	public AdminOceanNews selectNews(int newsNo) {
		return sqlSession.getMapper(AdminWaterparkMapper.class).selectNews(newsNo);
	}
	
	@Override
	public List<AdminOceanNews> selectNewsList() {
		return sqlSession.getMapper(AdminWaterparkMapper.class).selectNewsList();
	}

	@Override
	public int deleteCheckNews(Integer newsNo) {
		return sqlSession.getMapper(AdminWaterparkMapper.class).deleteCheckNews(newsNo);
	}

	//°·Waterpark's Reservation DAO
	@Override
	public List<OceanReservationDTO> selectReservationList() {
		return sqlSession.getMapper(AdminWaterparkMapper.class).selectReservationList();
	}

	//°·Waterpark's charge DAO
	@Override
	public List<OceanChargeDTO> selectChargeList() {
		return sqlSession.getMapper(AdminWaterparkMapper.class).selectChargeList();
	}

}
