package com.leeso0.study.vo;

public class StudyMemberVO {

		private String study_mem_idx;
		private String study_idx;
		private String member_idx;
		
		public String getStudy_mem_idx() {
			return study_mem_idx;
		}
		public void setStudy_mem_idx(String study_mem_idx) {
			this.study_mem_idx = study_mem_idx;
		}
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

		@Override
		public String toString() {
			return "StudyMemberVO [study_mem_idx=" + study_mem_idx + ", study_idx=" + study_idx + ", member_idx="
					+ member_idx + "]";
		}
		
}
