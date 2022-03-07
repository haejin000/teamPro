package com.team.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.team.domain.PageDTO;
import com.team.domain.HotKeywordDTO;
import com.team.domain.ListDTO;
@Repository
public class ListDAOImpl implements ListDAO{
	private final static String namespace = "com.team.mapper.ListMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	//main 화면에 는 메서드 시작
	@Override
	public void insertSearch(HotKeywordDTO dto) {
		System.out.println("MainDAOImpl insertSearch pass");
		sqlSession.insert(namespace + ".insertSearch", dto);
	}


	@Override
	public List<HotKeywordDTO> hotKeyword(){
		System.out.println("MainDAOImpl hotKeyword pass");
		return sqlSession.selectList(namespace+".HotKeyword");
	}


	@Override
	public List<ListDTO> getTodayNewList() {
		System.out.println("MainDAOImpl getNewList pass");
		return sqlSession.selectList(namespace+".getTodayNewList");
	}


	@Override
	public List<ListDTO> healthList() {
		System.out.println("MainDAOImpl getHotList pass");
		return sqlSession.selectList(namespace+".healthList");
	}


	@Override
	public List<ListDTO> getProcessedList() {
		System.out.println("MainDAOImpl getProcessedList pass");
		return sqlSession.selectList(namespace+".getProcessedList");
	}


	@Override
	public List<ListDTO> getfreshList() {
		System.out.println("MainDAOImpl getfreshList pass");
		return sqlSession.selectList(namespace+".getfreshList");
	}


	@Override
	public List<ListDTO> getTeaList() {
		System.out.println("MainDAOImpl getTeaList pass");
		return sqlSession.selectList(namespace+".getTeaList");
	}


	@Override
	public List<ListDTO> getDailyList() {
		System.out.println("MainDAOImpl getDailyList pass");
		return sqlSession.selectList(namespace+".getDailyList");
	}


	@Override
	public List<ListDTO> weekBestList() {
		System.out.println("MainDAOImpl weekBestList pass");
		return sqlSession.selectList(namespace+".weekBestList");
	}

	@Override
	public List<ListDTO> mainSearch(String value, PageDTO pageDTO) {
		System.out.println("MainDAOImpl mainSearch pass");
		HashMap<String, Object> mav = new HashMap<String, Object>();
		mav.put("value", value);
		mav.put("pageDTO", pageDTO);
		
		return sqlSession.selectList(namespace+".mainSearch",mav);
	}


	@Override
	public List<ListDTO> getBestList(PageDTO pageDTO) {
		System.out.println("ListDAOImpl getBestList pass");
		return sqlSession.selectList(namespace+".getBestList",pageDTO);
	}
	@Override
	public Integer getsubListCount(PageDTO pageDTO) {
		System.out.println("ListDAOImpl getListCount pass");
		return sqlSession.selectOne(namespace+".getListCount");
	}
	
	//main 화면에 는 메서드 끝
	
	@Override
	public List<ListDTO> getNewList(PageDTO pageDTO) {
		System.out.println("ListDAOImpl getNewList pass");
		return sqlSession.selectList(namespace+".getNewList",pageDTO);
	}

	@Override
	public List<ListDTO> subAll(PageDTO pageDTO) {
		System.out.println("ListDAOImpl subAll pass");
		return sqlSession.selectList(namespace+".subAll",pageDTO);
	}
	
	@Override
	public ListDTO goodsView(int goodsNo) {
		System.out.println("ListDAOImpl goodsView pass");
		return sqlSession.selectOne(namespace+".goodsView",goodsNo);
	}
	@Override
	public List<ListDTO> categoryList(String cateCode, String cateCodeRef) throws Exception {
		HashMap<String, Object> mav1 = new HashMap<String, Object>();
		mav1.put("cateCode", cateCode);
		mav1.put("cateCodeRef", cateCodeRef);
		 System.out.println("categoryListSubaa :"+cateCode+cateCodeRef);
		return sqlSession.selectList(namespace+".categoryList",mav1);
	}
	@Override
	public List<ListDTO> categoryList(String cateCode) throws Exception {
		System.out.println("ListDAOImpl categoryListSub pass");
		 System.out.println("categorysubList :"+cateCode);
		 HashMap<String, Object> mav2 = new HashMap<String, Object>();
		 mav2.put("cateCode", cateCode);
		return sqlSession.selectList(namespace+".categoryListSub",mav2);
	}

//실패	
//	@Override
//	public List<ListDTO> categoryList(String cateCode, String cateCodeRef) throws Exception {
//	
//		HashMap<String, Object> mav = new HashMap<String, Object>();
//		 
//		mav.put("cateCode", cateCode);
//		mav.put("cateCodeRef", cateCodeRef);
//		 System.out.println("categoryList :"+cateCode+cateCodeRef);
//		return sqlSession.selectList(namespace+".categoryList",mav);
//	}
//	@Override
//	public List<ListDTO> categoryList(String cateCode) throws Exception {
//		System.out.println("ListDAOImpl categoryListSub pass");
//		 System.out.println("categorysubList :"+cateCode);
//		return sqlSession.selectList(namespace+".categoryListSub",cateCode);
//	}

	
}
