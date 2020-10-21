package site.bluemoon.mapper;

import java.util.List;

import site.bluemoon.dto.InfoBoard;

public interface AdminBoardMapper {
	//INFO
	List<InfoBoard> selectInfoList();
	InfoBoard selectInfo(int infoNo);
	int updateInfo(InfoBoard infoBoard);
	int updateInfoState(InfoBoard infoBoard);
}
