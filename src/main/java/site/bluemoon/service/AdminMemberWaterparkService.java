package site.bluemoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import site.bluemoon.dto.OceanNews;

public interface AdminMemberWaterparkService {

	
	//°·Waterpark's News DAO
	@Autowired
	void addNews(OceanNews oceanNews);
	void modifyNews(OceanNews oceanNews);
	void removeNews(int newsNo);
	OceanNews getSelectNews(int newsNo);
	List<OceanNews> getSelectNewsList();
	
}
