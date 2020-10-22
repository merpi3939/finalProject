package site.bluemoon.dao;

import java.util.List;
import java.util.Map;

import site.bluemoon.dto.InfoBoard;

public interface BoardDAO {
	int insertInfoBoard(InfoBoard infoBoard);
	int selectInfoBoardCount(Map<String, Object>map);
	List<InfoBoard> selectInfoBoardList(Map<String, Object>map);
}
