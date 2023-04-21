package com.obj.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.obj.model.MemberVO;
import com.obj.service.AdminService;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	AdminService adServ;
	
	@GetMapping("/admin")
	public String memberList(Model model, MemberVO member, HttpSession session) {
		//session.setAttribute("email", adServ.memberList(member));
		model.addAttribute("member", adServ.memberList(member));
		return "/admin";
	}
	
	

}
