package site.bluemoon.dao;

import java.util.List;

import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;

public interface AdminWaterparkDAO {

	//°·Waterpark's News DAO
	int insertNews(OceanNews oceanNews);
	int updateNews(OceanNews oceanNews);
	int deleteNews(int newsNo);
	OceanNews selectNews(int newsNo);
	List<OceanNews> selectNewsList();
	int deleteCheckNews(Integer newsNo);
	
	//°·Waterpark's Reservation DAO
	List<OceanReservationDTO> selectReservationList();
	
}
