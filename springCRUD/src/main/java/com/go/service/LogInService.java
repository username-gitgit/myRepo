package com.go.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import com.go.model.CrudtestVO;
import com.go.model.LogInVO;
import com.go.model.MemberListVO;

public interface LogInService {
	void registerMember(Optional<String> name, Optional<String> password, Optional<String> id);
	public void join(MemberListVO member);
	public LogInVO login(LogInVO member);
	public ArrayList<MemberListVO> list();
	public void dele(String id);
	//insert delete는 void!!!!
	public List<CrudtestVO> joinTable();
	public List<LogInVO>joinTableMap();

}
