package site.bluemoon.mapper;

import java.util.List;
import java.util.Map;

import site.bluemoon.dto.InfoBoard;
import site.bluemoon.dto.qnaReply;

public interface BoardMapper {
	int insertInfoBoard(InfoBoard infoBoard);
	int selectInfoBoardCount(Map<String, Object>map);
	List<InfoBoard> selectInfoBoardList(Map<String, Object>map);
	InfoBoard selectInfoBoard(Map<String, Object>map);
	int updateInfoBoard(InfoBoard infoBoard);
	int insertQnaReply(qnaReply qnaReply);
	List<qnaReply> selectQnaReply(Map<String, Object>map);
	int deleteQnaReply(int num);
}
