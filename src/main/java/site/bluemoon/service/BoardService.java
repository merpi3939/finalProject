package site.bluemoon.service;

import java.util.List;
import java.util.Map;

import site.bluemoon.dto.InfoBoard;

public interface BoardService {
	void addInfoBoard(InfoBoard infoBoard);
	int findInfoBoardCount(Map<String, Object>map);
	List<InfoBoard> findInfoBoardList(Map<String, Object>map);
}
