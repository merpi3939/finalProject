package site.bluemoon.service;

import java.util.List;

import site.bluemoon.dto.InfoBoard;

public interface AdminBoardService {
	//INFO
	List<InfoBoard> selectInfoList();
	InfoBoard selectInfo(int infoNo);
	int updateInfo(InfoBoard infoBoard);
	int updateInfoState(InfoBoard infoBoard);
}
