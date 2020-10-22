package site.bluemoon.service;

import java.util.List;

import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;

public interface AdminWaterparkService {

	//°·Waterpark's News Service
	void addNews(OceanNews oceanNews);
	void modifyNews(OceanNews oceanNews);
	void removeNews(int newsNo);
	OceanNews getSelectNews(int newsNo);
	List<OceanNews> getSelectNewsList();
	void removeCheckNews(Integer newsNo);
	
	//°·Waterpark's Reservation Service
	List<OceanReservationDTO> getSelectReservationList();
}
