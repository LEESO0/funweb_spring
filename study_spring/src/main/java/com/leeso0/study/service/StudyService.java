package com.leeso0.study.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leeso0.study.mapper.StudyMapper;
import com.leeso0.study.vo.PageInfo;
import com.leeso0.study.vo.StudyMemberVO;
import com.leeso0.study.vo.StudyVO;

@Service
public class StudyService {
	
	@Autowired
	StudyMapper mapper;
	
	// study 생성
	public void createStudy(StudyVO study, String member_id) {
		mapper.insertStudy(study, member_id);
	}

//	// studyList listCount 조회
//	public int getStudyListCount(StudyVO study) {
//		return mapper.selectStudyListCount(study);
//	}
	
//	// studyList 조회
//	public ArrayList<HashMap<String, String>> getStudyList(StudyVO study, PageInfo pageInfo) {
//		return mapper.selectStudyList(study, pageInfo);
//	}
	
	// studyList listCount 조회 (정렬, 필터)
	public int getFilteredStudyListCount(StudyVO study, String search_keyword, String search_filter1, String search_filter2) {
		search_keyword = "%" + search_keyword + "%";
		return mapper.selectFilteredStudyListCount(study, search_keyword, search_filter1, search_filter2);
	}

	// studyList 조회 (정렬, 필터)
	public ArrayList<HashMap<String, String>> getFilteredStudyList(StudyVO study, PageInfo pageInfo, String search_keyword,
			String search_filter1, String search_filter2) {
		search_keyword = "%" + search_keyword + "%";
		return mapper.selectFilteredStudyList(study, pageInfo, search_keyword, search_filter1, search_filter2);
	}
	
	// 조회수 증가 작업
	public void increaseReadcount(String study_idx) {
		mapper.updateReadcount(study_idx);
	}

	// study view 조회
	public HashMap<String, String> getStudyView(String study_idx) {
		return mapper.selectStudyView(study_idx);
	}
	
	// study 신청 여부 조회
	public StudyMemberVO checkStudyMember(String study_idx, String member_id) {
		return mapper.selectStudyMember(study_idx, member_id);
	}

	// study register
	public void registerStudy(String study_idx, String member_id) {
		mapper.insertStudyMember(study_idx, member_id);
	}
	
	// study modify
	public int ModifyStudy(StudyVO study, String member_id) {
		return mapper.updateStudy(study, member_id);
	}
	
	// study delete
	public int deleteStudy(String member_id, String member_pass, String study_idx) {
		return mapper.deleteStudy(member_id, member_pass, study_idx);
		
	}


}
