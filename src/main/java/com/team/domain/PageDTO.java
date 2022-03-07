package com.team.domain;

public class PageDTO {
	private int pageBlock;
	//시작페이지
	private int startPage;
	//끝나는 페이지
	private int endPage;
	private int pageCount;
	//게시글에 표시할 상품수
	private int pageSize;
	//페이지 번호 가져오기 
	private String pageNum;
	
	private int currentPage;
	
	

	//	시작줄
	private int startRow;
//	끝나는줄
	private int endRow;
//	상품수량
	private int count;
//	검색어 
	private String keyword;
//	인기순 최신순 최저가 ...
	private String searchType;
	//최저가
	private int sprice;
	//최고가
	private int eprice;
	
	
	
	public int getSprice() {
		return sprice;
	}
	public void setSprice(int sprice) {
		this.sprice = sprice;
	}
	public int getEprice() {
		return eprice;
	}
	public void setEprice(int eprice) {
		this.eprice = eprice;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getPageBlock() {
		return pageBlock;
	}
	public void setPageBlock(int pageBlock) {
		this.pageBlock = pageBlock;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public String getPageNum() {
		return pageNum;
	}
	public void setPageNum(String pageNum) {
		this.pageNum = pageNum;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
		init(); //페이지설정 초기화시키는 메서드
	}
	public void init() {
		pageBlock=10;
		startPage=(currentPage-1)/pageBlock*pageBlock+1;
		endPage=startPage+pageBlock-1;
		pageCount=count/pageSize+(count%pageSize==0?0:1);
		 if(endPage >  pageCount){
		 // 	끝나는페이지번호 =  전체글페이지수
		 	endPage=pageCount;
		 }
	}

	
}
