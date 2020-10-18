package site.bluemoon.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.bluemoon.dto.OceanNews;
import site.bluemoon.mapper.AdminMemberWaterparkMapper;

@Repository
public class AdminMemberWaterparkDAOImpl implements AdminMemberWaterparkDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertNews(OceanNews oceanNews) {
		return sqlSession.getMapper(AdminMemberWaterparkMapper.class).insertNews(oceanNews);
	}

	@Override
	public int updateNews(int newsNo) {
		return sqlSession.getMapper(AdminMemberWaterparkMapper.class).updateNews(newsNo);
	}

	@Override
	public int deleteNews(int newsNo) {
		return sqlSession.getMapper(AdminMemberWaterparkMapper.class).deleteNews(newsNo);
	}

	@Override
	public OceanNews selectNews(int newsNo) {
		System.out.println("22222");
		return sqlSession.getMapper(AdminMemberWaterparkMapper.class).selectNews(newsNo);
	}
	
	@Override
	public List<OceanNews> selectNewsList() {
		return sqlSession.getMapper(AdminMemberWaterparkMapper.class).selectNewsList();
	}


}
