package com.leeso0.study.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.leeso0.study.service.MainService;
import com.leeso0.study.vo.MemStudyTypeVO;
import com.leeso0.study.vo.MemberVO;

@Controller
public class MainController {
	
	@Autowired
	MainService service;

	// 회원가입 방식 선택
	@RequestMapping(value = "/joinHow", method = RequestMethod.GET)
	public String joinHow() {
		return "member/joinHow";
	}
	
	// 기본 회원가입 뷰페이지 이동
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		return "member/join";
	}
	
	// 기본 회원가입 비즈니스로직
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(@ModelAttribute MemberVO member, String member_birth_year, String member_birth_month, String member_birth_day, String study_type, Model model) {
		
		member.setMember_birth(member_birth_year + member_birth_month + member_birth_day);
		
		String[] studyTypeArr = study_type.split(",");
		
		String study_type1 = studyTypeArr[0];
		String study_type2 = "";
		String study_type3 = "";
		if(studyTypeArr.length == 2) {
			study_type2 = studyTypeArr[1];
		}
		if(studyTypeArr.length == 3) {
			study_type3 = studyTypeArr[2];
		}
		
		MemStudyTypeVO studyType = new MemStudyTypeVO();
		studyType.setMember_id(member.getMember_id());
		studyType.setStudy_type1(study_type1);
		studyType.setStudy_type2(study_type2);
		studyType.setStudy_type3(study_type3);
		
		boolean isJoinSuccess = service.joinMember(member, studyType);
		
		if(isJoinSuccess) {
			model.addAttribute("msg", "회원가입을 축하드립니다!");
			return "success_msg";
		} else {
			model.addAttribute("msg", "회원가입 실패!");
			return "fail_back";
		}
	}
		
	// 로그인 방식 선택
	@RequestMapping(value = "/loginHow", method = RequestMethod.GET)
	public String loginHow() {
		return "member/loginHow";
	}
	
	// 로그인 뷰페이지 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "member/login";
	}
	
	// 로그인 비즈니스로직
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute MemberVO member, HttpSession session, Model model) {
		
		MemberVO memberResult = service.loginMember(member);
		
		if(memberResult == null) {
			model.addAttribute("msg", "아이디 또는 비밀번호가 틀렸습니다");
			return "fail_back";
		}
		
		session.setAttribute("sId", member.getMember_id());
		
		return "redirect:/";
	}
	
	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
	}
}
