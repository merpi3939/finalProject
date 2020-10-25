package site.bluemoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import oracle.jdbc.proxy.annotation.GetDelegate;
import site.bluemoon.dao.OceanDAO;
import site.bluemoon.dto.AdminOceanNews;
import site.bluemoon.dto.HotelPay;
import site.bluemoon.dto.HotelReserveDTO;
import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;
import site.bluemoon.dto.User;

@Service
public class OceanServiceImpl implements OceanService {
	@Autowired
	private OceanDAO OceanDAO;
	
	//����
	@Override
	public void addOceanReservation(OceanReservationDTO oceanReservation) {
		OceanDAO.insertOceanReservation(oceanReservation);
	}

	//���
	@Override
	public OceanChargeDTO getOceanCharge(int cgNo) {
		return OceanDAO.selectOceanCharge(cgNo);
	}
	
	@Override
	public List<OceanChargeDTO> getOceanChargeList() {
		return OceanDAO.selectOceanChargeList();
	}
	
	//����
	@Override
	public OceanReservationDTO getOceanPayment(int rsNo) {
		return OceanDAO.selectOceanPayment(rsNo);
	}
	
	@Override
	public List<OceanReservationDTO> getOceanPaymentList() {
		return OceanDAO.selectOceanPaymentList();
	}
	
	
	
	//ȯ��
	
	@Override
	public void removeOcean(int rsNo) {
		OceanDAO.deleteOcean(rsNo);
	}
	
	/*
	@Override
	public void updateOcean(OceanReservationDTO updateOcean) {
		OceanDAO.updateOcean(updateOcean);
	}
	*/
	
	
	/*
	@Override
	public void updateOcean(OceanReservationDTO updateOcean) {
		OceanDAO.updateOcean(updateOcean);
	}
	
	@Override
	public OceanReservationDTO updateList(int rsNo) {
		return OceanDAO.updateList(rsNo);
	}
	*/
	//��������
	@Override
	public List<AdminOceanNews> getSelectNewsList() {
		return OceanDAO.selectNewsList();
	}

}
