package site.bluemoon.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.User;
import site.bluemoon.mapper.AdminWaterparkMapper;

@Repository
public class AdminWaterparkDAOImpl implements AdminWaterparkDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
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
	public OceanNews selectNews(int newsNo) {
		return sqlSession.getMapper(AdminWaterparkMapper.class).selectNews(newsNo);
	}
	
	@Override
	public List<OceanNews> selectNewsList() {
		return sqlSession.getMapper(AdminWaterparkMapper.class).selectNewsList();
	}

	@Override
	public int deleteCheckNews(Integer newsNo) {
		return sqlSession.getMapper(AdminWaterparkMapper.class).deleteCheckNews(newsNo);
	}

}
