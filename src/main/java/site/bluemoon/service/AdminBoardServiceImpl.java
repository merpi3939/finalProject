package site.bluemoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}
