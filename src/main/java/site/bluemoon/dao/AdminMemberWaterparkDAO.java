package site.bluemoon.dao;

import java.util.List;

import site.bluemoon.dto.OceanNews;

public interface AdminMemberWaterparkDAO {

	//°·Waterpark's News DAO
	int insertNews(OceanNews oceanNews);
	int updateNews(OceanNews oceanNews);
	int deleteNews(int newsNo);
	OceanNews selectNews(int newsNo);
	List<OceanNews> selectNewsList();
	int deleteCheckNews(List<Integer> newsNo);
}
