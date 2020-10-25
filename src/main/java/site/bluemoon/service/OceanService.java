package site.bluemoon.service;

import java.util.List;

import site.bluemoon.dto.AdminOceanNews;
import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;
import site.bluemoon.dto.User;

public interface OceanService {
	
	//����
	void addOceanReservation(OceanReservationDTO oceanReservation);
	
	//���
	OceanChargeDTO getOceanCharge(int cgNo);
	List<OceanChargeDTO> getOceanChargeList();
	
	//����
	OceanReservationDTO getOceanPayment(int rsNo);
	List<OceanReservationDTO> getOceanPaymentList();
	
	//ȯ��

	void removeOcean(int rsNo);
	
	/* void updateOcean(OceanReservationDTO updateOcean); */
	
	/*
	void updateOcean(OceanReservationDTO updateOcean);
	OceanReservationDTO updateList(int rsNo);
	*/
	
	//��������
	/* List<OceanNews> getSelectNewsList(); */
	List<AdminOceanNews> getSelectNewsList();


}
