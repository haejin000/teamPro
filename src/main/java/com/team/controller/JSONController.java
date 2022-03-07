package com.team.controller;

import java.util.Iterator;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.team.domain.HotKeywordDTO;
import com.team.domain.ListDTO;
import com.team.domain.PageDTO;
import com.team.service.ListService;

@RestController
public class JSONController {

	@Inject
	private ListService listService;

	@RequestMapping(value = "/mainRank", method = RequestMethod.GET)
	public ResponseEntity<List<HotKeywordDTO>> insertSearch() {

		List<HotKeywordDTO> aa = listService.hotKeyword();

		ResponseEntity<List<HotKeywordDTO>> entity = new ResponseEntity<List<HotKeywordDTO>>(aa, HttpStatus.OK);

		return entity;
	}

	@RequestMapping(value = "/mainPro1", method = RequestMethod.GET)
	public String insertSearchPro(HotKeywordDTO searchDTO) {

		listService.insertSearch(searchDTO);
		return "redirect:/sub_list_search";
	}



			
	}
	
