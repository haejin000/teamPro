package com.team.service;

import java.util.List;

import com.team.domain.PageDTO;
import com.team.domain.HotKeywordDTO;
import com.team.domain.ListDTO;

public interface ListService {
	
	public void insertSearch(HotKeywordDTO dto);
	
    public List<HotKeywordDTO> hotKeyword();
    
    public List<ListDTO> getTodayNewList();
    
    //	인기리스트 main
	public List<ListDTO> healthList();
	//	가공식품리스트 main	
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
	
	//sub_list
	public List<ListDTO> getBestList(PageDTO pageDTO);
	//총 상품수량
	public Integer getsubListCount(PageDTO pageDTO);
	//새상품
	public List<ListDTO> getNewList(PageDTO pageDTO);
	//카테고리 대분류
	//	public List<ListDTO> categoryList(String cateCode,String level) throws Exception;
	//	카테고리 대분류
	public List<ListDTO> categoryList(String cateCode,String level) throws Exception;
	//subAll
	public List<ListDTO> subAll(PageDTO pageDTO);
	//상품 상세페이지
	public ListDTO goodsView(int goodsNo);
}
