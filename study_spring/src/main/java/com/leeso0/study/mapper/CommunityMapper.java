package com.leeso0.study.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.leeso0.study.vo.PageInfo;

public interface CommunityMapper {
	
	// commuListCount 조회
	int selectCommuListCount(@Param("search_filter1") String search_filter1, @Param("search_filter2") String search_filter2, @Param("search_keyword") String search_keyword);

	// commuList 조회
	List<HashMap<String, String>> selectCommuList(@Param("pageInfo") PageInfo pageInfo, @Param("search_filter1") String search_filter1, @Param("search_filter2") String search_filter2, @Param("search_keyword") String search_keyword);

}
