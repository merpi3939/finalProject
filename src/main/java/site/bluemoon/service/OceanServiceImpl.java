package site.bluemoon.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.bluemoon.dao.OceanDAO;
import site.bluemoon.dto.OceanReservationDTO;

@Service
public class OceanServiceImpl implements OceanService {
	@Autowired
	private OceanDAO OceanDAO;

	@Override
	public void addOceanReservation(OceanReservationDTO oceanReservation) {
		OceanDAO.insertOceanReservation(oceanReservation);
	}

}
