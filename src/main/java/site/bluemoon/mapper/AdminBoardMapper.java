package site.bluemoon.mapper;

import java.util.List;
import java.util.Map;

import site.bluemoon.dto.InfoBoard;


public interface AdminBoardMapper {
	//INFO
	
	List<InfoBoard> selectInfoList(Map<String, Object> map);
	InfoBoard selectInfo(int infoNo);
	int updateInfo(InfoBoard infoBoard);
	int updateInfoState(InfoBoard infoBoard);
	
	int selectNewQna();
	
}
