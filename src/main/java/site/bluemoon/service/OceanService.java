package site.bluemoon.service;

import java.util.List;

import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;

public interface OceanService {
	
	void addOceanReservation(OceanReservationDTO oceanReservation);
	//���
	OceanChargeDTO getOceanCharge(int cgNo);
	List<OceanChargeDTO> getOceanChargeList();
	//����
	OceanReservationDTO getOceanPayment(int rsNo);
	List<OceanReservationDTO> getOceanPaymentList();
	//ȯ��
	void getOceanUpdate(OceanReservationDTO oceanUpdate);
	//��������
	List<OceanNews> getSelectNewsList();
}
