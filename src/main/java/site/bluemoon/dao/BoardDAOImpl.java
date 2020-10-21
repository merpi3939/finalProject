package site.bluemoon.dao;

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
	
}
