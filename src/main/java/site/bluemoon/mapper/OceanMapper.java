package site.bluemoon.mapper;

import java.util.List;

import site.bluemoon.dto.AdminOceanNews;
import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanReservationDTO;
import site.bluemoon.dto.User;

public interface OceanMapper {
	
	//����
	int insertOceanReservation(OceanReservationDTO oceanReservation);
	
	//���
	OceanChargeDTO selectOceanCharge(int cgNo);
	List<OceanChargeDTO> selectOceanChargeList();
	
	//����
	OceanReservationDTO selectOceanPayment(int rsNo);
	List<OceanReservationDTO> selectOceanPaymentList();
	
	//ȯ��
	
	int updateOcean(OceanReservationDTO updateOcean);
	
	/*
	int updateOcean(OceanReservationDTO updateOcean);
	OceanReservationDTO updateList(int rsNo);
	*/
	
	//��������
	List<AdminOceanNews> selectNewsList();

}
