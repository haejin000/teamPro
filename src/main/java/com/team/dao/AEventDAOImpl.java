package com.team.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.team.domain.AEventDTO;

@Repository
public class AEventDAOImpl implements AEventDAO{
	
	private final static String namespace = "com.team.mapper.AEventMapper";
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public void insertCoupon(AEventDTO aDTO) {
		sqlSession.insert(namespace + ".insertCoupon", aDTO);
		
	}
	
	
	
	
}
