package com.obj.mapper;

import org.apache.ibatis.annotations.Mapper;
import com.obj.model.MemberVO;

@Mapper
public interface SignUpMapper {
	public void memberJoin(MemberVO member);
	

}
