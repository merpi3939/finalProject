package site.bluemoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import site.bluemoon.dto.AdminUserReservation;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;
import site.bluemoon.dto.User;

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
