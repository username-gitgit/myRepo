package com.obj.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.obj.mapper.LogInMapper;
import com.obj.model.MemberVO;

@Service
public class LogInServiceImpl implements LogInService {
	
	@Autowired
	LogInMapper logmap;

	@Override
	public MemberVO memberLogIn(MemberVO member) {
		return logmap.memberLogIn(member);
	}

}
