package site.bluemoon.dao;

import java.util.List;
import java.util.Map;

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
	public List<InfoBoard> selectInfoList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public InfoBoard selectInfo(int infoNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateInfo(InfoBoard infoBoard) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateInfoState(InfoBoard infoBoard) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	/*
	@Override
	public List<InfoBoard> selectInfoList(Map<String, Object> map) {
		return sqlSession.getMapper(AdminBoardMapper.class).selectInfoList(map);
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
*/
}
