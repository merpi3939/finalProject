package site.bluemoon.service;

import java.util.List;

import site.bluemoon.dto.AdminOceanNews;
import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;
import site.bluemoon.dto.User;

public interface OceanService {
	
	void addOceanReservation(OceanReservationDTO oceanReservation);
	
	//요금
	OceanChargeDTO getOceanCharge(int cgNo);
	List<OceanChargeDTO> getOceanChargeList();
	
	//결제
	OceanReservationDTO getOceanPayment(int rsNo);
	List<OceanReservationDTO> getOceanPaymentList();
	
	//환불

	//생생뉴스
	/* List<OceanNews> getSelectNewsList(); */
	List<AdminOceanNews> getSelectNewsList();
}
