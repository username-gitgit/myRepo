package com.obj.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.obj.mapper.SignUpMapper;
import com.obj.model.MemberVO;

@Service
public class SignUpServiceImpl implements SignUpService {
	private static final Logger logger = LoggerFactory.getLogger(SignUpServiceImpl.class);
	
	@Autowired
	SignUpMapper signmap;

	@Override
	public void memberJoin(MemberVO member) {
		logger.info("SignUpServiceImpl member ={}", member);
		signmap.memberJoin(member);
	}

}
