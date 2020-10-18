package site.bluemoon.mapper;

import java.util.List;

import site.bluemoon.dto.OceanNews;

public interface AdminMemberWaterparkMapper {
	
	//°·Waterpark's News Mapper
	int insertNews(OceanNews oceanNews);
	int updateNews(OceanNews oceanNews);
	int deleteNews(int newsNo);
	OceanNews selectNews(int newsNo);
	List<OceanNews> selectNewsList();
}
