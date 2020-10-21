package site.bluemoon.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.bluemoon.dto.InfoBoard;
import site.bluemoon.mapper.AdminBoardMapper;

@Repository
public class AdminBoardDAOImpl implements AdminBoardDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<InfoBoard> selectInfoList() {
		return sqlSession.getMapper(AdminBoardMapper.class).selectInfoList();
	}

	@Override
	public InfoBoard selectInfo(int infoNo) {
		return sqlSession.getMapper(AdminBoardMapper.class).selectInfo(infoNo);
	}

	@Override
	public int updateInfo(InfoBoard infoBoard) {
		return sqlSession.getMapper(AdminBoardMapper.class).updateInfo(infoBoard);
	}

	@Override
	public int updateInfoState(InfoBoard infoBoard) {
		return sqlSession.getMapper(AdminBoardMapper.class).updateInfoState(infoBoard);
	}

}
