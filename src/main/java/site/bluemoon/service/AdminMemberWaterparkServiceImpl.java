package site.bluemoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.bluemoon.dao.AdminMemberWaterparkDAO;
import site.bluemoon.dto.OceanNews;

@Service
public class AdminMemberWaterparkServiceImpl implements AdminMemberWaterparkService {

	@Autowired
	private AdminMemberWaterparkDAO adminMemberWaterparkDAO; 
	
	@Override
	public void addNews(OceanNews oceanNews) {
		adminMemberWaterparkDAO.insertNews(oceanNews);
	}

	@Override
	public void modifyNews(int newsNo) {
		adminMemberWaterparkDAO.updateNews(newsNo);
	}

	@Override
	public void removeNews(int newsNo) {
		adminMemberWaterparkDAO.deleteNews(newsNo);
	}

	@Override
	public OceanNews getSelectNews(int newsNo) {
		System.out.println("111111");
		return adminMemberWaterparkDAO.selectNews(newsNo);
	}
	
	@Override
	public List<OceanNews> getSelectNewsList() {
		return adminMemberWaterparkDAO.selectNewsList();
	}
}
