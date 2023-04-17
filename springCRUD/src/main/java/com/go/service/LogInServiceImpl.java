package com.go.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.go.mapper.LogInMapper;
import com.go.model.LogInVO;
import com.go.model.MemberListVO;

@Service
public class LogInServiceImpl implements LogInService{
	private static final Logger logger = LoggerFactory.getLogger(LogInServiceImpl.class);
	
	@Autowired
	LogInMapper lm;

	@Override
	public void join(LogInVO member) {
		logger.info("join Service = {}", member);
		lm.join(member);
	}

	@Override
	public LogInVO login(LogInVO member) {
		logger.info("list Service = {}", member);
		return lm.login(member);
	}

	@Override
	public ArrayList<MemberListVO> list() {
		return lm.list();
	}

	@Override
	public void dele(String id) {
		logger.info("LogInServiceImpl ID delete = {}", id);
		lm.dele(id);
	}

	@Override
	public void up(LogInVO member) {
		lm.up(member);
	}

}
