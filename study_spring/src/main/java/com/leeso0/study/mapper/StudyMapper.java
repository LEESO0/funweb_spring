package com.leeso0.study.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;

import com.leeso0.study.vo.PageInfo;
import com.leeso0.study.vo.StudyVO;

public interface StudyMapper {
	
	// study 생성
	void insertStudy(@Param("study") StudyVO study, @Param("member_id") String member_id);

	// studyList listCount 조회
	int selectStudyListCount(@Param("study") StudyVO study);

	// studyList 조회
	ArrayList<HashMap<String, String>> selectStudyList(@Param("study") StudyVO study, @Param("pageInfo") PageInfo pageInfo);

	// studyList listCount 조회 (정렬, 필터)
	int selectFilteredStudyListCount(@Param("study") StudyVO study, @Param("search_keyword") String search_keyword, @Param("search_filter1") String search_filter1, @Param("search_filter2") String search_filter2);

	// studyList 조회 (정렬, 필터)
	ArrayList<HashMap<String, String>> selectFilteredStudyList(@Param("study") StudyVO study, @Param("pageInfo") PageInfo pageInfo, @Param("search_keyword") String search_keyword,
			@Param("search_filter1") String search_filter1, @Param("search_filter2") String search_filter2);

}
