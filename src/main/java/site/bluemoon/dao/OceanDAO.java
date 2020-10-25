package site.bluemoon.dao;


import java.util.List;

import site.bluemoon.dto.AdminOceanNews;
import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;
import site.bluemoon.dto.User;

public interface OceanDAO {
	
	//예약
	int insertOceanReservation(OceanReservationDTO oceanReservation);
	
	//요금
	OceanChargeDTO selectOceanCharge(int cgNo);
	List<OceanChargeDTO> selectOceanChargeList();
	
	//결제
	OceanReservationDTO selectOceanPayment(int rsNo);
	List<OceanReservationDTO> selectOceanPaymentList();
	
	//환불
	
	int updateOcean(OceanReservationDTO updateOcean);
	
	/*
	int updateOcean(OceanReservationDTO updateOcean);
	OceanReservationDTO updateList(int rsNo);
	*/
	
	//생생뉴스
	List<AdminOceanNews> selectNewsList();

}

