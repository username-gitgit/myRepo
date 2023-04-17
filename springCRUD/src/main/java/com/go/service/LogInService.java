package com.go.service;

import java.util.ArrayList;

import com.go.model.LogInVO;
import com.go.model.MemberListVO;

public interface LogInService {
	public void join(LogInVO member);
	public LogInVO login(LogInVO member);
	public ArrayList<MemberListVO> list();
	public void dele(String id);
	//insert delete는 void!!!!
	public void up(LogInVO member);


}
