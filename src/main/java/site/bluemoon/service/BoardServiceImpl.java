package site.bluemoon.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.bluemoon.dao.BoardDAO;
import site.bluemoon.dto.InfoBoard;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public void addInfoBoard(InfoBoard infoBoard) {
		boardDAO.insertInfoBoard(infoBoard);
	}

	@Override
	public List<InfoBoard> findInfoBoardList(Map<String, Object> map) {
		return boardDAO.selectInfoBoardList(map);
	}

	@Override
	public int findInfoBoardCount(Map<String, Object>map) {
		return boardDAO.selectInfoBoardCount(map);
	}

	@Override
	public InfoBoard findInfoBoard(Map<String, Object> map) {
		return boardDAO.selectInfoBoard(map);
	}

	@Override
	public void modifyInfoBoard(InfoBoard infoBoard) {
		boardDAO.updateInfoBoard(infoBoard);
	}

	
	
}
