package site.bluemoon.dao;


import java.util.List;

import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanReservationDTO;

public interface OceanDAO {
	int insertOceanReservation(OceanReservationDTO oceanReservation);
	//���
	OceanChargeDTO selectOceanCharge(int cgNo);
	List<OceanChargeDTO> selectOceanChargeList();
	//����
	OceanReservationDTO selectOceanPayment(int rsNo);
	List<OceanReservationDTO> selectOceanPaymentList();
}

