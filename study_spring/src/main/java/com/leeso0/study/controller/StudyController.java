package com.leeso0.study.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.leeso0.study.service.StudyService;
import com.leeso0.study.vo.PageInfo;
import com.leeso0.study.vo.StudyVO;

@Controller
public class StudyController {
	
	@Autowired
	StudyService service;
	 

	// study create 뷰페이지 이동
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String create(HttpSession session, Model model) {
		
		if(session.getAttribute("sId") == null) {
			model.addAttribute("msg", "로그인 후 생성 가능합니다");
			return "fail_back";
		}
		
		return "study/study_create";
	}
	
	// study create 비즈니스 로직
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String create(@ModelAttribute StudyVO study, HttpSession session) {

		String member_id = session.getAttribute("sId").toString();
		
		if(study.getStudy_space() == null) {
			study.setStudy_space("");
		}
		
		service.createStudy(study, member_id);
		
		return "redirect:/";
	}
	
	// study create 뷰페이지 이동
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String saerch(@ModelAttribute StudyVO study, 
			@RequestParam(defaultValue = "") String search_keyword,
			@RequestParam(defaultValue = "") String search_filter1,
			@RequestParam(defaultValue = "") String search_filter2,
			@RequestParam(defaultValue = "1") int pageNum, 
			Model model) {
		
		int listCount = service.getFilteredStudyListCount(study, search_keyword, search_filter1, search_filter2);
		int listLimit = 30; // 한 페이지 당 표시할 게시물 목록 갯수
		int pageLimit = 10; // 한 페이지 당 표시할 페이지 목록 갯수
		
		// 페이징 처리를 위한 계산 작업
		int maxPage = (int) Math.ceil((double) listCount / listLimit);
		int startPage = ((int) ((double) pageNum / pageLimit + 0.9) - 1) * pageLimit + 1;
		int endPage = startPage + pageLimit - 1;
		if (endPage > maxPage) {
			endPage = maxPage;
		}

		int startRow = (pageNum - 1) * listLimit;

		PageInfo pageInfo = new PageInfo();
		pageInfo.setPageNum(pageNum);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setStartPage(startPage);
		pageInfo.setEndPage(endPage);
		pageInfo.setListCount(listCount);
		pageInfo.setStartRow(startRow);
		pageInfo.setListLimit(listLimit);
		
		ArrayList<HashMap<String, String>> studyList = service.getFilteredStudyList(study, pageInfo, search_keyword, search_filter1, search_filter2);
		
		model.addAttribute("study", study);
		model.addAttribute("studyList", studyList);
		model.addAttribute("search_keyword", search_keyword);
		model.addAttribute("search_filter1", search_filter1);
		model.addAttribute("search_filter2", search_filter2);
		model.addAttribute("pageInfo", pageInfo);
		
		return "study/study_search";
	}
	
}
