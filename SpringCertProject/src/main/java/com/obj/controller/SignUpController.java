package com.obj.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.obj.model.MemberVO;
import com.obj.service.SignUpService;

@Controller
public class SignUpController {
	private static final Logger logger = LoggerFactory.getLogger(SignUpController.class);
	
	@Autowired
	SignUpService signserv;
	
	@PostMapping("memberJoin")
	public ModelAndView memberJoin(@ModelAttribute("member") @Valid MemberVO member, BindingResult result) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("member", member);
		
		if (result.hasErrors()) {
			modelAndView.addObject("errorMessage", "회원 가입 폼을 올바르게 입력해주세요.");
	        modelAndView.setViewName("SignUp");
        	logger.info("hasErrors member ={}", member);
        	logger.info("hasErrors result ={}", result);
            return modelAndView;
        }else {
		signserv.memberJoin(member);
		modelAndView.setViewName("home");
        logger.info("insert Success member ={}", member);
        return modelAndView;
        }
	

	}
}	
