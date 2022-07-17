package com.leeso0.study.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.leeso0.study.vo.MemStudyTypeVO;
import com.leeso0.study.vo.MemberVO;

public interface MainMapper {
	
	// 회원가입 - member insert
	int insertMember(MemberVO member);
	
	// 회원가입 - study_type insert
	int insertStudyType(@Param("studyType") MemStudyTypeVO studyType, @Param("member") MemberVO member);
	
	// 로그인
	MemberVO selectMember(MemberVO member);

	// 조회수 높은순 5개 study 조회
	List<HashMap<String, String>> selectBestStudyList();

	// 로그인 했을 때 추천 study 5개 조회
	List<HashMap<String, String>> selectRecommendStudyList(String member_id);

}
