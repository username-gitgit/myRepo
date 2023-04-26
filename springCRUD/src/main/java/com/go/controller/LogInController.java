package com.go.controller;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestParam;
import com.go.model.LogInVO;
import com.go.model.MemberListVO;
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
	public String registerSubmit(MemberListVO memberList, @ModelAttribute MemberListVO member) {
		System.out.println("controller syso");
		System.out.println("memberList = " + memberList);
		ls.registerMember(Optional.ofNullable(member.getName()), Optional.ofNullable(member.getPassword()), Optional.ofNullable(member.getId()));
		logger.info("member registerSubmit = {}", member);
		ls.join(memberList);
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
	
//	@ResponseBody
//	@PostMapping("/managerPage")
//	public String show(){
//		return "managerPage";
//	}
	
	@GetMapping("/managerPage")
	public String list(Model model) {
		model.addAttribute("memlist", ls.list());
		logger.info("member logIn = {}", ls.list());
		model.addAttribute("joinList", ls.joinTable());
		logger.info("joinList logIn = {}", ls.joinTable());
		model.addAttribute("joinTableMap", ls.joinTableMap());
		logger.info("joinTableMap logIn = {}", ls.joinTableMap());
		return "/managerPage";
	}
	
	@GetMapping("/del")
	public String dele(@RequestParam("id") String id) {
		ls.dele(id);
		logger.info("controller ID delete = {}", id);
		return "redirect:/managerPage";
	}
	
//	@GetMapping("/managerPage")
//	public String joinTable(Model model) {
//		model.addAttribute("joinList", ls.joinTable());
//		logger.info("joinList logIn = {}", ls.joinTable());
//		return "/managerPage";
//	}
	
	
//	@Controller
//	public class MemberController {
//	    private final MemberService memberService;
//	    
//	    @Autowired
//	    public MemberController(MemberService memberService) {
//	        this.memberService = memberService;
//	    }
//	    
//	    @PostMapping("/members/new")
//	    public String create(MemberForm form) {
//	        Member member = new Member();
//	        member.setName(form.getName());
//	        member.setPassword(form.getPassword());
//	        member.setAge(form.getAge());
//	        
//	        memberService.signUp(member);
//	        
//	        return "redirect:/";
//	    }
//	

}
