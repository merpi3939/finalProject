package site.bluemoon.service;

import java.util.List;

import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;

public interface OceanService {
	
	void addOceanReservation(OceanReservationDTO oceanReservation);
	
	//���� ����Ʈ �׽�Ʈ
	List<OceanReservationDTO> getOceanUnoList();
	OceanReservationDTO getOceanUno(int rsNo);
	
	//���
	OceanChargeDTO getOceanCharge(int cgNo);
	List<OceanChargeDTO> getOceanChargeList();
	
	//����
	OceanReservationDTO getOceanPayment(int rsNo);
	List<OceanReservationDTO> getOceanPaymentList();
	
	//ȯ��

	//��������
	List<OceanNews> getSelectNewsList();
}
