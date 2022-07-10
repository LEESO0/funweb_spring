package com.leeso0.study.service;

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

}
