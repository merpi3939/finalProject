package site.bluemoon.service;

import java.util.List;
import java.util.Map;

import site.bluemoon.dto.InfoBoard;
import site.bluemoon.dto.qnaReply;

public interface BoardService {
	void addInfoBoard(InfoBoard infoBoard);
	int findInfoBoardCount(Map<String, Object>map);
	List<InfoBoard> findInfoBoardList(Map<String, Object>map);
	InfoBoard findInfoBoard(Map<String, Object>map);
	void modifyInfoBoard(InfoBoard infoBoard);
	void addQnaReply(qnaReply qnaReply);
	List<qnaReply> findQnaList(Map<String, Object>map);
	void removeQnaReply(int num);
}
