package site.bluemoon.mapper;

import java.util.List;

import site.bluemoon.dto.AdminOceanNews;
import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanReservationDTO;
import site.bluemoon.dto.User;

public interface OceanMapper {
	int insertOceanReservation(OceanReservationDTO oceanReservation);
	
	//요금
	OceanChargeDTO selectOceanCharge(int cgNo);
	List<OceanChargeDTO> selectOceanChargeList();
	
	//결제
	OceanReservationDTO selectOceanPayment(int rsNo);
	List<OceanReservationDTO> selectOceanPaymentList();
	
	//환불

	//생생뉴스
	List<AdminOceanNews> selectNewsList();
}
