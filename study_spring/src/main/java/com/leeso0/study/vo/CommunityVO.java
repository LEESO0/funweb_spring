package com.leeso0.study.vo;

public class CommunityVO {

	private String commu_idx;
	private String member_idx;
	private String commu_subject;
	private String commu_content;
	private String commu_readcount;
	private String commu_date;
	private String commu_update_date;
	private String commu_delete_date;
	
	public String getCommu_idx() {
		return commu_idx;
	}
	public void setCommu_idx(String commu_idx) {
		this.commu_idx = commu_idx;
	}
	public String getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(String member_idx) {
		this.member_idx = member_idx;
	}
	public String getCommu_subject() {
		return commu_subject;
	}
	public void setCommu_subject(String commu_subject) {
		this.commu_subject = commu_subject;
	}
	public String getCommu_content() {
		return commu_content;
	}
	public void setCommu_content(String commu_content) {
		this.commu_content = commu_content;
	}
	public String getCommu_readcount() {
		return commu_readcount;
	}
	public void setCommu_readcount(String commu_readcount) {
		this.commu_readcount = commu_readcount;
	}
	public String getCommu_date() {
		return commu_date;
	}
	public void setCommu_date(String commu_date) {
		this.commu_date = commu_date;
	}
	public String getCommu_update_date() {
		return commu_update_date;
	}
	public void setCommu_update_date(String commu_update_date) {
		this.commu_update_date = commu_update_date;
	}
	public String getCommu_delete_date() {
		return commu_delete_date;
	}
	public void setCommu_delete_date(String commu_delete_date) {
		this.commu_delete_date = commu_delete_date;
	}

	@Override
	public String toString() {
		return "CommunityVO [commu_idx=" + commu_idx + ", member_idx=" + member_idx + ", commu_subject=" + commu_subject
				+ ", commu_content=" + commu_content + ", commu_readcount=" + commu_readcount + ", commu_date="
				+ commu_date + ", commu_update_date=" + commu_update_date + ", commu_delete_date=" + commu_delete_date
				+ "]";
	}
	
}
