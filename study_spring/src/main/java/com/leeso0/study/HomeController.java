package com.leeso0.study;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.leeso0.study.controller.MainController;
import com.leeso0.study.service.MainService;

@Controller
public class HomeController {
	
	@Autowired
	MainService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, HttpSession session, Model model) {
		
		List<HashMap<String, String>> bestStudyList = service.getBestStudyList();
		
		if(session.getAttribute("sId") != null) {
			String member_id = session.getAttribute("sId").toString();
			List<HashMap<String, String>> recommendStudyList = service.getRecommendStudyList(member_id);
			model.addAttribute("recommendStudyList", recommendStudyList);
		}
		
		model.addAttribute("bestStudyList", bestStudyList);
		
		return "main";
	}
	
}
