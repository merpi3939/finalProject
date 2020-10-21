package site.bluemoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.bluemoon.dao.AdminWaterparkDAO;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.User;

@Service
public class AdminWaterparkServiceImpl implements AdminWaterparkService {

	@Autowired
	private AdminWaterparkDAO adminMemberWaterparkDAO; 
	
	@Override
	public void addNews(OceanNews oceanNews) {
		adminMemberWaterparkDAO.insertNews(oceanNews);
	}

	@Override
	public void modifyNews(OceanNews oceanNews) {
		adminMemberWaterparkDAO.updateNews(oceanNews);
	}

	@Override
	public void removeNews(int newsNo) {
		adminMemberWaterparkDAO.deleteNews(newsNo);
	}

	@Override
	public OceanNews getSelectNews(int newsNo) {
		return adminMemberWaterparkDAO.selectNews(newsNo);
	}
	
	@Override
	public List<OceanNews> getSelectNewsList() {
		return adminMemberWaterparkDAO.selectNewsList();
	}
	
	public void removeCheckNews(Integer newsNo) {
		adminMemberWaterparkDAO.deleteCheckNews(newsNo);
	}
}
