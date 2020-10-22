package site.bluemoon.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.bluemoon.dto.InfoBoard;
import site.bluemoon.mapper.BoardMapper;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insertInfoBoard(InfoBoard infoBoard) {
		return sqlSession.getMapper(BoardMapper.class).insertInfoBoard(infoBoard); 
	}

	@Override
	public List<InfoBoard> selectInfoBoardList(Map<String, Object> map) {
		return sqlSession.getMapper(BoardMapper.class).selectInfoBoardList(map);
	}

	@Override
	public int selectInfoBoardCount(Map<String, Object> map) {
		return sqlSession.getMapper(BoardMapper.class).selectInfoBoardCount(map);
	}

	@Override
	public InfoBoard selectInfoBoard(Map<String, Object> map) {
		return sqlSession.getMapper(BoardMapper.class).selectInfoBoard(map);
	}

	@Override
	public int updateInfoBoard(InfoBoard infoBoard) {
		return sqlSession.getMapper(BoardMapper.class).updateInfoBoard(infoBoard);
	}

	

}
