package com.leeso0.study.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leeso0.study.mapper.MainMapper;
import com.leeso0.study.vo.MemStudyTypeVO;
import com.leeso0.study.vo.MemberVO;

@Service
public class MainService {

	@Autowired
	MainMapper mapper;
	
	// 회원가입
	public boolean joinMember(MemberVO member, MemStudyTypeVO studyType) {
		
		boolean isJoinSuccess = false;
		
		// member 테이블 insert
		int insertCountMem = mapper.insertMember(member);
		// study_type 테이블 insert
		int insertCountType = mapper.insertStudyType(studyType, member);
		
		if(insertCountMem > 0 && insertCountType > 0) {
			isJoinSuccess = true;
		}
		
		return isJoinSuccess;
	}

	// 로그인
	public MemberVO loginMember(MemberVO member) {
		
		MemberVO memberResult = null;
		
		memberResult = mapper.selectMember(member);
		
		return memberResult;
	}

	// 조회수 높은순 5개 study 조회
	public List<HashMap<String, String>> getBestStudyList() {
		return mapper.selectBestStudyList();
	}

	// 로그인 했을 때 추천 study 5개 조회
	public List<HashMap<String, String>> getRecommendStudyList(String member_id) {
		return mapper.selectRecommendStudyList(member_id);
	}
	
	

}
