package com.leeso0.study.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leeso0.study.mapper.CommunityMapper;
import com.leeso0.study.vo.CommunityVO;
import com.leeso0.study.vo.PageInfo;

@Service
public class CommunityService {

	@Autowired
	CommunityMapper mapper;

	// articleListCount 조회
	public int getArticleListCount(String search_filter1, String search_filter2, String search_keyword) {
		return mapper.selectArticleListCount(search_filter1, search_filter2, search_keyword);
	}
	
	// articleList 조회
	public List<HashMap<String, String>> getArticleList(PageInfo pageInfo, String search_filter1, String search_filter2, String search_keyword) {
		search_keyword = '%' + search_keyword + '%';
		return mapper.selectArticleList(pageInfo, search_filter1, search_filter2, search_keyword);
	}

	// article view 조회
	public HashMap<String, String> getArticle(String commu_idx) {
		return mapper.selectArticle(commu_idx);
	}
}
