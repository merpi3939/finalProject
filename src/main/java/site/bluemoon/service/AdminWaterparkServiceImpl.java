package site.bluemoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.bluemoon.dao.AdminWaterparkDAO;
import site.bluemoon.dto.AdminOceanNews;
import site.bluemoon.dto.OceanChargeDTO;
import site.bluemoon.dto.OceanNews;
import site.bluemoon.dto.OceanReservationDTO;

@Service
public class AdminWaterparkServiceImpl implements AdminWaterparkService {

	@Autowired
	private AdminWaterparkDAO adminWaterparkDAO; 
	
	//°·Waterpark's News Service
	@Override
	public void addNews(OceanNews oceanNews) {
		adminWaterparkDAO.insertNews(oceanNews);
	}

	@Override
	public void modifyNews(OceanNews oceanNews) {
		adminWaterparkDAO.updateNews(oceanNews);
	}

	@Override
	public void removeNews(int newsNo) {
		adminWaterparkDAO.deleteNews(newsNo);
	}

	@Override
	public AdminOceanNews getSelectNews(int newsNo) {
		return adminWaterparkDAO.selectNews(newsNo);
	}
	
	@Override
	public List<AdminOceanNews> getSelectNewsList() {
		return adminWaterparkDAO.selectNewsList();
	}

	//°·Waterpark's charge Service
	@Override
	public List<OceanChargeDTO> getSelectChargeList() {
		return adminWaterparkDAO.selectChargeList();
	}

	@Override
	public OceanChargeDTO getSelectCharge(int cgNo) {
		return adminWaterparkDAO.selectCharge(cgNo);
	}

	@Override
	public void addCharge(OceanChargeDTO oceanChargeDTO) {
		adminWaterparkDAO.insertCharge(oceanChargeDTO);
	}

	@Override
	public void removeCharge(int cgNo) {
		adminWaterparkDAO.deleteCharge(cgNo);
	}

	@Override
	public void modifyCharge(OceanChargeDTO oceanChargeDTO) {
		adminWaterparkDAO.updateCharge(oceanChargeDTO);
	}

	//°·Waterpark's Reservation Service
	@Override
	public List<OceanReservationDTO> getSelectReservationList() {
		return adminWaterparkDAO.selectReservationList();
	}
}

