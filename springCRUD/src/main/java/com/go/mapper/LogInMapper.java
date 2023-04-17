package com.go.mapper;

import java.util.ArrayList;

import com.go.model.LogInVO;
import com.go.model.MemberListVO;

public interface LogInMapper {
	public void join(LogInVO member);
	public LogInVO login(LogInVO member);
	public ArrayList<MemberListVO> list();
	public void dele(String id);
	public void up(LogInVO member);

}
