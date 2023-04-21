package com.obj.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.obj.mapper.AdminMapper;
import com.obj.model.MemberVO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	AdminMapper adMapper;

	@Override
	public ArrayList<MemberVO> memberList(MemberVO member) {
		return adMapper.memberList(member);
	}

}
