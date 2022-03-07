package com.team.controller;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.team.domain.PageDTO;
import com.team.domain.HotKeywordDTO;
import com.team.domain.ListDTO;
import com.team.service.ListService;

@Controller
public class ListController {
	
	@Inject
	private ListService listService;
	
	//main 화면 리스트들 시작
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main( Model model) {
		//main 오늘의 리스트
		List<ListDTO> getTodayNewList = listService.getTodayNewList();
		model.addAttribute("getTodayNewList",getTodayNewList);
		//main 카테고리 새입고 건강식품
		List<ListDTO> getHealthList = listService.healthList();
		model.addAttribute("getHealthList",getHealthList);
		//main 카테고리 새입고 가공식품
		List<ListDTO> getProcessedList =listService.getProcessedList();
		model.addAttribute("getProcessedList",getProcessedList);
		//main 카테고리 새입고 신선식품
		List<ListDTO> getfreshList =listService.getfreshList();
		model.addAttribute("getfreshList",getfreshList);
		//main 카테고리 새입고 차티백
		List<ListDTO> getTeaList =listService.getTeaList();
		model.addAttribute("getTeaList",getTeaList);
		//main 카테고리 새입고 생활잡화
		List<ListDTO> getDailyList =listService.getDailyList();
		model.addAttribute("getDailyList",getDailyList);
		//main 카테고리 새입고 주간베스트
		List<ListDTO> weekBestList =listService.weekBestList();
		model.addAttribute("weekBestList",weekBestList);
		
		return "main";
	}

	
	
	//메인	베스트 상품 리스트 Top100 시작
	@RequestMapping(value = "/sub_best", method = RequestMethod.GET)
	public String getBestList(HttpServletRequest request,Model model) {
		// 한화면에 보여줄 글개수  10개 설정
		 int pageSize=8;
		 
		 //페이지 번호 가져오기 
		 String pageNum=request.getParameter("pageNum");
		 //페이지번호가 없으면 -> 1
		 if(pageNum==null){
		 	pageNum="1";
		 }
		
		 PageDTO pageDTO=new PageDTO();
		 pageDTO.setPageSize(pageSize);
		 pageDTO.setPageNum(pageNum);
		
		 List<ListDTO> getBestList=listService.getBestList(pageDTO);
		 
		 //게시판 전체 글의 개수
		 int count =listService.getsubListCount(pageDTO);
		 pageDTO.setCount(count);
		 
		 // 데이터 담기
		 model.addAttribute("getBestList",getBestList);
		 model.addAttribute("pageDTO",pageDTO);
		 System.out.println("ListController sub_best");
		return "subpage/sub_best";
	}	//	베스트 상품 리스트 Top100 끝

	
	
	//메인  NEW 리스트 시작
	@RequestMapping(value = "/sub_new", method = RequestMethod.GET)
	public String getNewList(HttpServletRequest request,Model model) {
		// 한화면에 보여줄 글개수  10개 설정
				 int pageSize=8;
				 
				 String pageNum=request.getParameter("pageNum");
				 //페이지번호가 없으면 -> 1
				 if(pageNum==null){
				 	pageNum="1";
				 }
				
				 PageDTO pageDTO=new PageDTO();
				 pageDTO.setPageSize(pageSize);
				 pageDTO.setPageNum(pageNum);
				
				 List<ListDTO> getNewList=listService.getNewList(pageDTO);
				 
				 //게시판 전체 글의 개수
				 int count =listService.getsubListCount(pageDTO);
				 pageDTO.setCount(count);
				 
				 // 데이터 담기
				 model.addAttribute("getNewList",getNewList);
				 model.addAttribute("pageDTO",pageDTO);
				 System.out.println("ListController getNewList");
		return "subpage/sub_new";
	}//메인 카테고리 NEW 리스트 끝//
	
	//main 화면 리스트들 끝===========================

//	상품 상세페이지goods_view 
//	@RequestParam("n") ==> 상품번호로 받아오기
	@RequestMapping(value = "/goods_view", method = RequestMethod.GET)
	public String goods_view(@RequestParam("n") int goodsNo,Model model,HttpServletRequest request) {
		ListDTO goodsView = listService.goodsView(goodsNo);
		List<ListDTO> weekBestList =listService.weekBestList();
		model.addAttribute("weekBestList",weekBestList);
		model.addAttribute("goodsView",goodsView);
		HttpSession session = request.getSession();
		session.setAttribute("id", "admin");
		return "/goods_view";
	}
	
	
	//카테고리별 리스트 c는 세부 l은 모두포함 카테고리
//	@RequestMapping(value = "/sub", method = RequestMethod.GET)
//	public String categoryList(@RequestParam("c") String cateCode,
//			@RequestParam("l") String level, Model model,HttpServletRequest request) throws Exception{
//		if(cateCode.equals("") && level.equals("")) {
//			
//			 
//			List<ListDTO> categoryList = listService.subAll();
//			model.addAttribute("categoryList",categoryList);
//			return "subpage/subAll";
//		}else {
//			List<ListDTO> categoryList=null;
//			categoryList=listService.categoryList(cateCode, level);
//			model.addAttribute("categoryList",categoryList);
//			 System.out.println("ListController categoryList");
//			 return "subpage/subAll";
//		}
//			
//	}

//	실패
	
	@RequestMapping(value = "/sub", method = RequestMethod.GET)
	public String categoryList(
			@RequestParam("c") String cateCode,
			@RequestParam("l") String level, 
			@RequestParam("keyword") String value,
			HotKeywordDTO hotKeywordDTO,
			@RequestParam(value = "pageSize", required = true, defaultValue = "5")String pageSize,
			@RequestParam(value = "searchType", required = true, defaultValue = "orderCnt desc,reviewCnt desc")String searchType,
			@RequestParam(value = "sprice", required = false, defaultValue="0")String sprice,
			@RequestParam(value = "eprice", required = false, defaultValue="10000000")String eprice,
			Model model,
			HttpServletRequest request
			) throws Exception{
		//메서드시작
		
		
		 PageDTO pageDTO=new PageDTO();
		 String pageNum=request.getParameter("pageNum");
		 //페이지번호가 없으면 -> 1
		 if(pageNum==null){
		 	pageNum="1";
		 }
		 String referer = (String)request.getHeader("REFERER");
		
		 System.out.println("===전달값확인===");
		 System.out.println("pageSize : "+pageSize);
		 System.out.println("searchType : "+searchType);
		 System.out.println("sprice : "+sprice);
		 System.out.println("eprice : "+eprice);
		 System.out.println("pageNum : "+pageNum);
		 System.out.println("referer : "+referer);
		

		 pageDTO.setPageSize(Integer.parseInt(pageSize)); //상품갯수
		 pageDTO.setSprice(Integer.parseInt(sprice)); //최저가
		 pageDTO.setEprice(Integer.parseInt(eprice)); //최고가
		 pageDTO.setSearchType("searchType"); //정렬 (판매순 인기순...)
		 pageDTO.setPageNum(pageNum); //페이지넘버
			
				
			//게시판 전체 글의 개수
			int count =listService.getsubListCount(pageDTO);
			pageDTO.setCount(count);
		 
		 
		 
		//검색어로 화면조회 관련 메서드.

		 if(!value.equals("")) {
			 //검색어를 입력하면
			 System.out.println("Controller main 검색어를 입력했다. 검색어 : "+value);
			 	listService.insertSearch(hotKeywordDTO); // DTO에 저장
				List<ListDTO>categoryList=listService.mainSearch(value,pageDTO); //검색리스트 나오게
				model.addAttribute("categoryList",categoryList);
				model.addAttribute("pageDTO",pageDTO);
				return "subpage/subAll";
		 }else if(cateCode.equals("")&&level.equals("")){
			 //검색어입력 X 상태에서 엔터 or 카테고리 전체보기
			 	System.out.println("상품전체실행 subAll");
				List<ListDTO> categoryList = listService.subAll(pageDTO);
				model.addAttribute("categoryList",categoryList);
				model.addAttribute("pageDTO",pageDTO);
				return "subpage/subAll";
		 }
		 if(!cateCode.equals("")){
			 List<ListDTO> categoryList=listService.categoryList(cateCode, level);
				model.addAttribute("categoryList",categoryList);
				 model.addAttribute("pageDTO",pageDTO);
				 System.out.println("카테고리 선택 categoryList");
				 return "subpage/subAll";
		 }
		 return "subpage/subAll";
		}
	}
	

