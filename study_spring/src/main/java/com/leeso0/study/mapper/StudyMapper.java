package com.leeso0.study.mapper;

import org.apache.ibatis.annotations.Param;

import com.leeso0.study.vo.StudyVO;

public interface StudyMapper {
	
	// study 생성
	void insertStudy(@Param("study") StudyVO study, @Param("member_id") String member_id);

}
