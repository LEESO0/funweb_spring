package com.leeso0.study.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leeso0.study.mapper.StudyMapper;
import com.leeso0.study.vo.StudyVO;

@Service
public class StudyService {
	
	@Autowired
	StudyMapper mapper;
	
	// study 생성
	public void createStudy(StudyVO study, String member_id) {
		mapper.insertStudy(study, member_id);
	}
}
