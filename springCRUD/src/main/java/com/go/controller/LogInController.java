package com.go.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;
import com.go.model.LogInVO;
import com.go.service.LogInService;

@Controller
public class LogInController {
	private static final Logger logger = LoggerFactory.getLogger(LogInController.class);
	
	@Autowired
	LogInService ls;
	
	@GetMapping("/SignUp")
	public String joinPage() {
		return "/SignUp";
	}
	
	
	@PostMapping("/insert")
	public String join(LogInVO member) {
		ls.join(member);
		logger.info("member join {}", member);
		System.out.println("aaaa");
		return "/home";
	}
	
	@GetMapping("/LogIn")
	public String logPage() {
		return "/LogIn";
	}
	
	@PostMapping("/LogIn")
	public String login(LogInVO member) {
		ls.login(member);
		logger.info("member join = {}", member);
		return "redirect:/managerPage"; //"redirect:/home";는 같은 컨트롤러 안에 있어야하나?
	}//리다이렉트, 파라미터, get
	
	
	@GetMapping("/managerPage")
	public String list(Model model) {
		model.addAttribute("memlist", ls.list());
		logger.info("member logIn = {}", ls.list());
		return "/managerPage";
	}
	
	@GetMapping("/del") //post하고싶다
	public String dele(@RequestParam("id") String id) {
		ls.dele(id);
		logger.info("controller ID delete = {}", id);
		return "redirect:/managerPage";
	}
	
	@GetMapping("/update")
	public String up(Model model) {
		model.addAttribute("memlist", ls.list());
		return "/update";
	}
	
	@GetMapping("/up")//업데이트 못하겠다
	public String up(LogInVO member) {
		ls.up(member);
		logger.info("member up = {}", member);
		return "redirect:/managerPage";
	}
	
//	@ResponseBody
//	@GetMapping("/update")
//	public String show(){
//		return "/update";
//	}
	
	

}
