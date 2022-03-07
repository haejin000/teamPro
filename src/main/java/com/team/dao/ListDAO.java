package com.team.dao;

import java.util.List;

import com.team.domain.PageDTO;
import com.team.domain.HotKeywordDTO;
import com.team.domain.ListDTO;

public interface ListDAO {
	//	검색어 저장 main
	public void insertSearch(HotKeywordDTO searchDTO);
	//	인기검색어 main
	public List<HotKeywordDTO> hotKeyword();
	//	신규상품 리스트 main
	public List<ListDTO> getTodayNewList();
	//	인기리스트 main
	public List<ListDTO> healthList();
	//  가공식품리스트 main	
	public List<ListDTO> getProcessedList();
	//  신선식품 main	
	public List<ListDTO> getfreshList();
	//  차/티백 main	
	public List<ListDTO> getTeaList();
	//  생활잡화 main	
	public List<ListDTO> getDailyList();
	//  주간 베스트 main	
	public List<ListDTO> weekBestList();
	//	메인 검색
	public List<ListDTO> mainSearch(String value,PageDTO pageDTO);
	//Top 100
	public List<ListDTO> getBestList(PageDTO pageDTO);
	//총 수량
	public Integer getsubListCount(PageDTO pageDTO);
	//NEW 
	public List<ListDTO> getNewList(PageDTO pageDTO);
//	//카테고리 대분류
//	public List<ListDTO> categoryList(String cateCode,String cateCodeRef,PageDTO pageDTO) throws Exception;
//	//카테고리 소분류	
//	public List<ListDTO> categoryList(String cateCode,PageDTO pageDTO) throws Exception;
	//subAll
	public List<ListDTO> subAll(PageDTO pageDTO);
	//카테고리 대분류
	public List<ListDTO> categoryList(String cateCode,String cateCodeRef) throws Exception;
	//카테고리 소분류	
	public List<ListDTO> categoryList(String cateCode) throws Exception;
//	//상품 상세페이지
	public ListDTO goodsView(int goodsNo);
	
}
