package com.leeso0.study.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.leeso0.study.vo.CommunityVO;
import com.leeso0.study.vo.PageInfo;

public interface CommunityMapper {
	
	// articleListCount 조회
	int selectArticleListCount(@Param("search_filter1") String search_filter1, @Param("search_filter2") String search_filter2, @Param("search_keyword") String search_keyword);

	// articleList 조회
	List<HashMap<String, String>> selectArticleList(@Param("pageInfo") PageInfo pageInfo, @Param("search_filter1") String search_filter1, @Param("search_filter2") String search_filter2, @Param("search_keyword") String search_keyword);

	// article view 조회
	HashMap<String, String> selectArticle(String commu_idx);

}
