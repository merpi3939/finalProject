package site.bluemoon.dao;

import java.util.List;

import site.bluemoon.dto.AdminOceanNews;
import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;

public interface AdminWaterparkDAO {

	//��Waterpark's News DAO
	int insertNews(OceanNews oceanNews);
	int updateNews(OceanNews oceanNews);
	int deleteNews(int newsNo);
	AdminOceanNews selectNews(int newsNo);
	List<AdminOceanNews> selectNewsList();
	int deleteCheckNews(Integer newsNo);
	
	//��Waterpark's Charge DAO
	List<OceanChargeDTO> selectChargeList();
	OceanChargeDTO selectCharge(int cgNo);
	int insertCharge(OceanChargeDTO oceanChargeDTO);
	int deleteCharge(int cgNo);
	int updateCharge(OceanChargeDTO oceanChargeDTO);
	
	//��Waterpark's Reservation DAO
	List<OceanReservationDTO> selectReservationList();
	OceanReservationDTO selectReservation(int rsNo);
	int deleteReservation(int rsNo);
	int updateReservation(OceanReservationDTO oceanReservationDTO);
	
}
