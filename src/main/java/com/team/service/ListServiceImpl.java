package com.team.service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team.dao.ListDAO;
import com.team.domain.PageDTO;
import com.team.domain.HotKeywordDTO;
import com.team.domain.ListDTO;

@Service
public class ListServiceImpl implements ListService{
	@Inject
	private ListDAO listDAO;

Timestamp pp_date=new Timestamp(System.currentTimeMillis());
	
	
	@Override
	public void insertSearch(HotKeywordDTO searchDTO) {
		System.out.println("insertSearch 도착");
		
		searchDTO.setPp_date(new Timestamp(System.currentTimeMillis()));
			listDAO.insertSearch(searchDTO);
	}

	@Override
	public List<HotKeywordDTO> hotKeyword() {
		System.out.println("hotKeyword 도착");
		return listDAO.hotKeyword();
	}

	@Override
	public List<ListDTO> getTodayNewList() {
		System.out.println("MainServiceImpl getTodayNewList 도착");
		return listDAO.getTodayNewList();
	}

	@Override
	public List<ListDTO> healthList() {
		System.out.println("MainServiceImpl healthList 도착");
		return listDAO.healthList();
	}

	@Override
	public List<ListDTO> getProcessedList() {
		System.out.println("MainServiceImpl getProcessedList 도착");
		return listDAO.getProcessedList();
	}

	@Override
	public List<ListDTO> getfreshList() {
		System.out.println("MainServiceImpl getfreshList 도착");
		return listDAO.getfreshList();
	}

	@Override
	public List<ListDTO> getTeaList() {
		System.out.println("MainServiceImpl getTeaList 도착");
		return listDAO.getTeaList();
	}

	@Override
	public List<ListDTO> getDailyList() {
		System.out.println("MainServiceImpl getDailyList 도착");
		return listDAO.getDailyList();
	}

	@Override
	public List<ListDTO> weekBestList() {
		System.out.println("MainServiceImpl weekBestList 도착");
		return listDAO.weekBestList();
	}


	@Override
	public List<ListDTO> mainSearch(String value, PageDTO pageDTO) {
		System.out.println("MainServiceImpl mainSearch 도착");
		 return listDAO.mainSearch(value,pageDTO);
	}
	//==========================================================
	//sub_best
	@Override
	public List<ListDTO> getBestList(PageDTO pageDTO) {
		int currentPage=Integer.parseInt(pageDTO.getPageNum());
		int startRow=(currentPage-1)*pageDTO.getPageSize()+1;
		int endRow=startRow+pageDTO.getPageSize()-1;
		
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setStartRow(startRow-1); // 디비 startRow-1
		pageDTO.setEndRow(endRow);
		System.out.println("serviceImpl getBestList pass");
		return listDAO.getBestList(pageDTO);
	}

	// pageSize, pageNum 담아옴
	// currentPage startRow endRow 
	@Override
	public Integer getsubListCount(PageDTO pageDTO) {

		return listDAO.getsubListCount(pageDTO);
	}
	//sub_new
	@Override
	public List<ListDTO> getNewList(PageDTO pageDTO) {
		int currentPage=Integer.parseInt(pageDTO.getPageNum());
		int startRow=(currentPage-1)*pageDTO.getPageSize()+1;
		int endRow=startRow+pageDTO.getPageSize()-1;
		
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setStartRow(startRow-1); // 디비 startRow-1
		pageDTO.setEndRow(endRow);
		System.out.println("serviceImpl getNewList pass");
		return listDAO.getNewList(pageDTO);
	}


	@Override
	public List<ListDTO> subAll(PageDTO pageDTO) {
		int currentPage=Integer.parseInt(pageDTO.getPageNum());
		int startRow=(currentPage-1)*pageDTO.getPageSize()+1;
		int endRow=startRow+pageDTO.getPageSize()-1;
		
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setStartRow(startRow-1); // 디비 startRow-1
		pageDTO.setEndRow(endRow);
		System.out.println("serviceImpl subAll pass");
		return listDAO.subAll(pageDTO);
	}

	@Override
	public ListDTO goodsView(int goodsNo) {
		
		System.out.println("serviceImpl goodsView pass");
		return listDAO.goodsView(goodsNo);
	}

	@Override
	public List<ListDTO> categoryList(String cateCode, String level) throws Exception {
//		System.out.println("level:"+level);
//		System.out.println("serviceImpl categoryList pass");
//		//페이징
//		if(pageDTO.getPageNum().equals("")) {
//			pageDTO.setPageNum("1");
//			System.out.println("ListServiceImpld에서 강제로 1을 입력했어요");
//		}
//		
//		System.out.println("getPageNum 확인용  "+pageDTO.getPageNum());
//		
//		 int currentPage = Integer.parseInt(pageDTO.getPageNum());
//		
//		int startRow=(currentPage-1)*pageDTO.getPageSize()+1;
//		int endRow=startRow+pageDTO.getPageSize()-1;
//		
//		pageDTO.setCurrentPage(currentPage);
//		pageDTO.setStartRow(startRow-1); // 디비 startRow-1
//		pageDTO.setEndRow(endRow);
		//카테고리설정
		String cateCodeRef="";
		if(level.equals("A")) {
			cateCodeRef=cateCode;
			System.out.println("serviceImpl categoryList :"+cateCodeRef+cateCode+"level:"+level);
			return listDAO.categoryList(cateCode, cateCodeRef);
		}else {
			System.out.println("serviceImpl categoryListsub pass");
			System.out.println("serviceImpl categoryListsub :"+cateCode);
			return listDAO.categoryList(cateCodeRef);
		}
	}



}
