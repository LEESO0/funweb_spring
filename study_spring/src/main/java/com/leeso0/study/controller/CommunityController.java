package com.leeso0.study.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.leeso0.study.service.CommunityService;
import com.leeso0.study.vo.CommunityVO;
import com.leeso0.study.vo.PageInfo;

@Controller
public class CommunityController {

	@Autowired
	CommunityService service;
	
	@RequestMapping(value = "community", method = RequestMethod.GET)
	public String community(@RequestParam(defaultValue = "1") int pageNum,
			@RequestParam(defaultValue = "") String search_filter1,
			@RequestParam(defaultValue = "") String search_filter2,
			@RequestParam(defaultValue = "") String search_keyword,
			Model model) {
		
		int listCount = service.getArticleListCount(search_filter1, search_filter2, search_keyword);
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
		
		List<HashMap<String, String>> articleList = service.getArticleList(pageInfo, search_filter1, search_filter2, search_keyword);
		
		model.addAttribute("articleList", articleList);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("search_filter1", search_filter1);
		model.addAttribute("search_filter2", search_filter2);
		model.addAttribute("search_keyword", search_keyword);
		
		return "community/article_list";
	}
	
	@RequestMapping(value = "articleView", method = RequestMethod.GET)
	public String articleView(String commu_idx, String pageNum, Model model) {
		
		HashMap<String, String> article = service.getArticle(commu_idx);
		
		model.addAttribute("article", article);
		
		return "community/article_view";
	}
	
}
