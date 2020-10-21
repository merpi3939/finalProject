package site.bluemoon.service;

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
	
}
