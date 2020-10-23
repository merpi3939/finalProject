package site.bluemoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.bluemoon.dao.OceanDAO;
import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;

@Service
public class OceanServiceImpl implements OceanService {
	@Autowired
	private OceanDAO OceanDAO;

	@Override
	public void addOceanReservation(OceanReservationDTO oceanReservation) {
		OceanDAO.insertOceanReservation(oceanReservation);
	}
	
	//유저 리스트 테스트
	@Override
	public List<OceanReservationDTO> getOceanUnoList() {
		return OceanDAO.getOceanUnoList();
	}
	@Override
	public OceanReservationDTO getOceanUno(int rsUno) {
		return OceanDAO.getOceanUno(rsUno);
	}
	
	
	//요금
	@Override
	public OceanChargeDTO getOceanCharge(int cgNo) {
		return OceanDAO.selectOceanCharge(cgNo);
	}
	
	@Override
	public List<OceanChargeDTO> getOceanChargeList() {
		return OceanDAO.selectOceanChargeList();
	}
	
	//결제
	@Override
	public OceanReservationDTO getOceanPayment(int rsNo) {
		return OceanDAO.selectOceanPayment(rsNo);
	}
	
	@Override
	public List<OceanReservationDTO> getOceanPaymentList() {
		return OceanDAO.selectOceanPaymentList();
	}
	
	//환불

	
	//생생뉴스
	@Override
	public List<OceanNews> getSelectNewsList() {
		return OceanDAO.selectNewsList();
	}
}
