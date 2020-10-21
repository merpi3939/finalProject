package site.bluemoon.dao;

import java.util.List;

import site.bluemoon.dto.InfoBoard;

public interface AdminBoardDAO {
	//INFO
	List<InfoBoard> selectInfoList();
	InfoBoard selectInfo(int infoNo);
	int updateInfo(InfoBoard infoBoard);
}
