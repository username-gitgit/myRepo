package com.go.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import com.go.model.CrudtestVO;
import com.go.model.LogInVO;
import com.go.model.MemberListVO;

public interface LogInMapper {
	Optional<MemberListVO> findByPassword(String password);
    Optional<MemberListVO> findByName(String name);
    void registerMember(Optional<String> name, Optional<String> password, Optional<String> id);
	public void join(MemberListVO member);
	
	public LogInVO login(LogInVO member);
	public ArrayList<MemberListVO> list();
	public void dele(String id);
	public List<CrudtestVO> joinTable();
	public List<LogInVO>joinTableMap();
	//조인 리설트맵을 썻을때 원래의VO를 넣어주네 ??

}
