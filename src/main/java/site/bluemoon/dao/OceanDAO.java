package site.bluemoon.dao;


import java.util.List;

import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;

public interface OceanDAO {
	int insertOceanReservation(OceanReservationDTO oceanReservation);
	
	//유저 리스트 테스트
	List<OceanReservationDTO> getOceanUnoList();
	OceanReservationDTO getOceanUno(int rsUno);
	
	//요금
	OceanChargeDTO selectOceanCharge(int cgNo);
	List<OceanChargeDTO> selectOceanChargeList();
	//결제
	OceanReservationDTO selectOceanPayment(int rsNo);
	List<OceanReservationDTO> selectOceanPaymentList();
	//환불

	//생생뉴스
	List<OceanNews> selectNewsList();
}

