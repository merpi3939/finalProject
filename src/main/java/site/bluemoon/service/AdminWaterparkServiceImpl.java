package site.bluemoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.bluemoon.dao.AdminWaterparkDAO;
import site.bluemoon.dto.AdminUserReservation;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;
import site.bluemoon.dto.User;

@Service
public class AdminWaterparkServiceImpl implements AdminWaterparkService {

	@Autowired
	private AdminWaterparkDAO adminWaterparkDAO; 
	
	//°·Waterpark's News Service
	@Override
	public void addNews(OceanNews oceanNews) {
		adminWaterparkDAO.insertNews(oceanNews);
	}

	@Override
	public void modifyNews(OceanNews oceanNews) {
		adminWaterparkDAO.updateNews(oceanNews);
	}

	@Override
	public void removeNews(int newsNo) {
		adminWaterparkDAO.deleteNews(newsNo);
	}

	@Override
	public OceanNews getSelectNews(int newsNo) {
		return adminWaterparkDAO.selectNews(newsNo);
	}
	
	@Override
	public List<OceanNews> getSelectNewsList() {
		return adminWaterparkDAO.selectNewsList();
	}
	
	public void removeCheckNews(Integer newsNo) {
		adminWaterparkDAO.deleteCheckNews(newsNo);
	}

	//°·Waterpark's Reservation Service
	@Override
	public List<OceanReservationDTO> getSelectReservationList() {
		return adminWaterparkDAO.selectReservationList();
	}
}
