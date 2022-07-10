package com.leeso0.study.vo;

public class MemStudyTypeVO {

	private String member_id;
	private String study_type1;
	private String study_type2;
	private String study_type3;
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_idx) {
		this.member_id = member_idx;
	}
	public String getStudy_type1() {
		return study_type1;
	}
	public void setStudy_type1(String study_type1) {
		this.study_type1 = study_type1;
	}
	public String getStudy_type2() {
		return study_type2;
	}
	public void setStudy_type2(String study_type2) {
		this.study_type2 = study_type2;
	}
	public String getStudy_type3() {
		return study_type3;
	}
	public void setStudy_type3(String study_type3) {
		this.study_type3 = study_type3;
	}
	
	@Override
	public String toString() {
		return "MemStudyTypeVO [member_id=" + member_id + ", study_type1=" + study_type1 + ", study_type2="
				+ study_type2 + ", study_type3=" + study_type3 + "]";
	}
	
}
