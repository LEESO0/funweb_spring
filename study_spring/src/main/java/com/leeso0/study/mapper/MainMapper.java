package com.leeso0.study.mapper;

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

}
