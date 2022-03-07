package com.team.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team.dao.AEventDAO;
import com.team.domain.AEventDTO;

@Service
public class AEventServiceImpl implements AEventService{

	@Inject
	private AEventDAO AEventDAO;

	@Override
	public void insertCoupon(AEventDTO aDTO) {
		AEventDAO.insertCoupon(aDTO);
	}
	
}
