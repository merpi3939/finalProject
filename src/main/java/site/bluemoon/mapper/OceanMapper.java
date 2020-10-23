package site.bluemoon.mapper;

import java.util.List;

import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;

public interface OceanMapper {
	int insertOceanReservation(OceanReservationDTO oceanReservation);
	
	//���� ����Ʈ �׽�Ʈ
	List<OceanReservationDTO> getOceanUnoList();
	OceanReservationDTO getOceanUno(int rsUno);
	
	//���
	OceanChargeDTO selectOceanCharge(int cgNo);
	List<OceanChargeDTO> selectOceanChargeList();
	
	//����
	OceanReservationDTO selectOceanPayment(int rsNo);
	List<OceanReservationDTO> selectOceanPaymentList();
	
	//ȯ��

	//��������
	List<OceanNews> selectNewsList();
}
