package com.obj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.obj.model.MemberVO;
import com.obj.service.LogInService;

@Controller
public class LogInController {
	private static final Logger logger = LoggerFactory.getLogger(LogInController.class);
	
	@Autowired
	LogInService logserv;
	
	//아이디없는 유저 거부, super유저 admin페이지로 이동, 일반유저 일반페이지로 이동
	//프론트에서 각 주소 매핑시켜야함
	@PostMapping("memberIn")
	public String memberLogIn(HttpSession session, MemberVO member, Model model) {
		String email = member.getEmail();
		String pass = member.getPassword();
		
		if (logserv.memberLogIn(member)==null) {
			logger.info("LogIn failed member is = {}", member);
			return "/LogIn";
		}else if(email.equals("admin") && pass.equals("1234")){
			logger.info("super user LogIn Success member is = {}", member);
			session.setAttribute("doctor", email);
			model.addAttribute("admin", logserv.memberLogIn(member));
			return "redirect:/admin";
		}else {
			logger.info("common user LogIn Success member is = {}", member);
			session.setAttribute("common", logserv.memberLogIn(member));
			return "redirect:/";
			}
	}
	
	//로그아웃 컨트롤러
	//로그아웃버튼 만들고 주소매핑
	@GetMapping("log-out")
	public String logout(HttpServletRequest request) {
		logger.info("user Log Out");

		HttpSession session = request.getSession();
		session.invalidate();
		return "/home";
	}
	
	
	
	

}
