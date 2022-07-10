package com.leeso0.study.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.leeso0.study.service.StudyService;
import com.leeso0.study.vo.StudyVO;

@Controller
public class StudyController {
	
	@Autowired
	StudyService service;
	
	// study create 뷰페이지 이동
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String create(HttpSession session, Model model) {
		
		if(session.getAttribute("sId") == null) {
			model.addAttribute("msg", "로그인 후 생성 가능합니다");
			return "fail_back";
		}
		
		return "study/study_create";
	}
	
	// study create 비즈니스 로직
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String create(@ModelAttribute StudyVO study, HttpSession session) {

		String member_id = session.getAttribute("sId").toString();
		
		if(study.getStudy_space() == null) {
			study.setStudy_space("");
		}
		
		service.createStudy(study, member_id);
		
		return "redirect:/";
	}
}
