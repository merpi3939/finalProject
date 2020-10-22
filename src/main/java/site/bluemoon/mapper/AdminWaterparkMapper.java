package site.bluemoon.mapper;

import java.util.List;

import site.bluemoon.dto.AdminOceanNews;
import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;

public interface AdminWaterparkMapper {
	
	//°·Waterpark's News Mapper
	int insertNews(OceanNews oceanNews);
	int updateNews(OceanNews oceanNews);
	int deleteNews(int newsNo);
	AdminOceanNews selectNews(int newsNo);
	List<AdminOceanNews> selectNewsList();
	int deleteCheckNews(Integer newsNo);
	
	//°·Waterpark's Reservation Mapper
	List<OceanReservationDTO> selectReservationList();
	
	//°·Waterpark's Charge Mapper
	List<OceanChargeDTO> selectChargeList();
	
}
