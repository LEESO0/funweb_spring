package com.leeso0.study.vo;

public class MemberVO {
	
	private String member_idx;
	private String member_id;
	private String member_pass;
	private String member_name;
	private String member_gender;
	private String member_birth;
	private String member_email;
	private String member_space;
	private String member_status;
	private String member_date;
	private String member_end_date;
	private String member_email_check;
	private String member_is_admin;
	
	public String getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(String member_idx) {
		this.member_idx = member_idx;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pass() {
		return member_pass;
	}
	public void setMember_pass(String member_pass) {
		this.member_pass = member_pass;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_gender() {
		return member_gender;
	}
	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}
	public String getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_space() {
		return member_space;
	}
	public void setMember_space(String member_space) {
		this.member_space = member_space;
	}
	public String getMember_status() {
		return member_status;
	}
	public void setMember_status(String member_status) {
		this.member_status = member_status;
	}
	public String getMember_date() {
		return member_date;
	}
	public void setMember_date(String member_date) {
		this.member_date = member_date;
	}
	public String getMember_end_date() {
		return member_end_date;
	}
	public void setMember_end_date(String member_end_date) {
		this.member_end_date = member_end_date;
	}
	public String getMember_email_check() {
		return member_email_check;
	}
	public void setMember_email_check(String member_email_check) {
		this.member_email_check = member_email_check;
	}
	public String getMember_is_admin() {
		return member_is_admin;
	}
	public void setMember_is_admin(String member_is_admin) {
		this.member_is_admin = member_is_admin;
	}
	
	@Override
	public String toString() {
		return "MemberVO [member_idx=" + member_idx + ", member_id=" + member_id + ", member_pass=" + member_pass
				+ ", member_name=" + member_name + ", member_gender=" + member_gender + ", member_birth=" + member_birth
				+ ", member_email=" + member_email + ", member_space=" + member_space + ", member_status="
				+ member_status + ", member_date=" + member_date + ", member_end_date=" + member_end_date
				+ ", member_email_check=" + member_email_check + ", member_is_admin=" + member_is_admin + "]";
	}
	
}
