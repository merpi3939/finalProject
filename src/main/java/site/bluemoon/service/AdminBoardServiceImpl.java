package site.bluemoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import site.bluemoon.dao.AdminBoardDAO;
import site.bluemoon.dto.InfoBoard;

@Service
public class AdminBoardServiceImpl implements AdminBoardService {
	@Autowired
	private AdminBoardDAO adminBoardDAO;

	//////////////////////INFO/////////////////////////////
	@Override
	public List<InfoBoard> selectInfoList() {
		return adminBoardDAO.selectInfoList();
	}

	@Override
	public InfoBoard selectInfo(int infoNo) {
		return adminBoardDAO.selectInfo(infoNo);
	}

	@Override
	public int updateInfo(@ModelAttribute("info") InfoBoard infoBoard) {
		return adminBoardDAO.updateInfo(infoBoard);
	}

	@Override
	public int updateInfoState(InfoBoard infoBoard) {
		return adminBoardDAO.updateInfoState(infoBoard);
	}

}
