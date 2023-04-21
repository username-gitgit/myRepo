package com.obj.mapper;

import java.util.ArrayList;

import com.obj.model.MemberVO;

public interface AdminMapper {
	public ArrayList<MemberVO> memberList(MemberVO member);

}
