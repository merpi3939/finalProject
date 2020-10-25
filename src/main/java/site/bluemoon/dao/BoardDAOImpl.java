package site.bluemoon.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.bluemoon.dto.InfoBoard;
import site.bluemoon.dto.qnaReply;
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

	@Override
	public int insertQnaReply(qnaReply qnaReply) {
		return sqlSession.getMapper(BoardMapper.class).insertQnaReply(qnaReply);
	}

	@Override
	public List<qnaReply> selectQnaReply(Map<String, Object> map) {
		return sqlSession.getMapper(BoardMapper.class).selectQnaReply(map);
	}

	@Override
	public int deleteQnaReply(int num) {
		return sqlSession.getMapper(BoardMapper.class).deleteQnaReply(num);
	}

	

}
