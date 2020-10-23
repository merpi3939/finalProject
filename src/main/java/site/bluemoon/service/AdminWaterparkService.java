package site.bluemoon.service;

import java.util.List;

import site.bluemoon.dto.AdminOceanNews;
import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;

public interface AdminWaterparkService {

	//°·Waterpark's News Service
	void addNews(OceanNews oceanNews);
	void modifyNews(OceanNews oceanNews);
	void removeNews(int newsNo);
	AdminOceanNews getSelectNews(int newsNo);
	List<AdminOceanNews> getSelectNewsList();
	
	//°·Waterpark's Charge Service
	List<OceanChargeDTO> getSelectChargeList();
	OceanChargeDTO getSelectCharge(int cgNo);
	void addCharge(OceanChargeDTO oceanChargeDTO);
	void removeCharge(int cgNo);
	void modifyCharge(OceanChargeDTO oceanChargeDTO);
	
	//°·Waterpark's Reservation Service
	List<OceanReservationDTO> getSelectReservationList();
}
