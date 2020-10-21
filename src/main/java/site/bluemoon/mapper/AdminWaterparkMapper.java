package site.bluemoon.mapper;

import java.util.List;

import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.User;

public interface AdminWaterparkMapper {
	
	//°·Waterpark's News Mapper
	int insertNews(OceanNews oceanNews);
	int updateNews(OceanNews oceanNews);
	int deleteNews(int newsNo);
	OceanNews selectNews(int newsNo);
	List<OceanNews> selectNewsList();
	int deleteCheckNews(Integer newsNo);
}
