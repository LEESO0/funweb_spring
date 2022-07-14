package com.leeso0.study.vo;

public class StudyVO {
	
	private String study_idx;
	private String member_idx;
	private String study_subject;
	private String study_content;
	private String study_type;
	private String study_time;
	private String study_num_of_people;
	private String study_contact_type;
	private String study_space;
	private String study_date;
	private String study_status;
	private String study_readcount;
	
	public String getStudy_idx() {
		return study_idx;
	}
	public void setStudy_idx(String study_idx) {
		this.study_idx = study_idx;
	}
	public String getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(String member_idx) {
		this.member_idx = member_idx;
	}
	public String getStudy_subject() {
		return study_subject;
	}
	public void setStudy_subject(String study_subject) {
		this.study_subject = study_subject;
	}
	public String getStudy_content() {
		return study_content;
	}
	public void setStudy_content(String study_content) {
		this.study_content = study_content;
	}
	public String getStudy_type() {
		return study_type;
	}
	public void setStudy_type(String study_type) {
		this.study_type = study_type;
	}
	public String getStudy_time() {
		return study_time;
	}
	public void setStudy_time(String study_time) {
		this.study_time = study_time;
	}
	public String getStudy_num_of_people() {
		return study_num_of_people;
	}
	public void setStudy_num_of_people(String study_num_of_people) {
		this.study_num_of_people = study_num_of_people;
	}
	public String getStudy_contact_type() {
		return study_contact_type;
	}
	public void setStudy_contact_type(String study_contact_type) {
		this.study_contact_type = study_contact_type;
	}
	public String getStudy_space() {
		return study_space;
	}
	public void setStudy_space(String study_space) {
		this.study_space = study_space;
	}
	public String getStudy_date() {
		return study_date;
	}
	public void setStudy_date(String study_date) {
		this.study_date = study_date;
	}
	public String getStudy_status() {
		return study_status;
	}
	public void setStudy_status(String study_status) {
		this.study_status = study_status;
	}
	public String getStudy_readcount() {
		return study_readcount;
	}
	public void setStudy_readcount(String study_readcount) {
		this.study_readcount = study_readcount;
	}
	
	@Override
	public String toString() {
		return "StudyVO [study_idx=" + study_idx + ", member_idx=" + member_idx + ", study_subject=" + study_subject
				+ ", study_content=" + study_content + ", study_type=" + study_type + ", study_time=" + study_time
				+ ", study_num_of_people=" + study_num_of_people + ", study_contact_type=" + study_contact_type
				+ ", study_space=" + study_space + ", study_date=" + study_date + ", study_status=" + study_status
				+ ", study_readcount=" + study_readcount + "]";
	}
	
}
