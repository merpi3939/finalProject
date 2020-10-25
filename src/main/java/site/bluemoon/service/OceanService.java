package site.bluemoon.service;

import java.util.List;

import site.bluemoon.dto.AdminOceanNews;
import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;
import site.bluemoon.dto.User;

public interface OceanService {
	
	//예약
	void addOceanReservation(OceanReservationDTO oceanReservation);
	
	//요금
	OceanChargeDTO getOceanCharge(int cgNo);
	List<OceanChargeDTO> getOceanChargeList();
	
	//결제
	OceanReservationDTO getOceanPayment(int rsNo);
	List<OceanReservationDTO> getOceanPaymentList();
	
	//환불
	void updateOcean(OceanReservationDTO updateOcean);
	
	//생생뉴스
	List<AdminOceanNews> getSelectNewsList();


}
