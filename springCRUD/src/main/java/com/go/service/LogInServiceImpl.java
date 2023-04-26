package com.go.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.go.mapper.LogInMapper;
import com.go.model.CrudtestVO;
import com.go.model.LogInVO;
import com.go.model.MemberListVO;

@Service
public class LogInServiceImpl implements LogInService{
	private static final Logger logger = LoggerFactory.getLogger(LogInServiceImpl.class);
	
	@Autowired
	LogInMapper lm;
	
	@Autowired
	public LogInServiceImpl(LogInMapper lm) {
        this.lm = lm;
    }
	
	@Override
	public void registerMember(Optional<String> name, Optional<String> password, Optional<String> id) {
		System.out.println("registerMember syso");
		String validatedName = name.orElseThrow(() -> new IllegalArgumentException("name is required"));
		String validatedPassword = password.orElseThrow(() -> new IllegalArgumentException("password is required"));
		logger.info("registerMember Service = {}", name);
		logger.info("registerMember Service = {}", password);
		
		
		MemberListVO member = lm.findByName(validatedName).orElse(null);
        if (member != null) {
            throw new IllegalStateException("User already exists.");
        }

        member = new MemberListVO();
        member.setName(validatedName);
        member.setPassword(validatedPassword);

        lm.join(member);
	}
	//registerMember메소드랑 join 메소드는 똑같이 null값 검증하는 코드인듯 즉 위아래는 방식만 다르고 같은듯
	
	@Override
	public void join(MemberListVO member) {
		System.out.println("join syso");
		if (member.getName() == null || member.getPassword() == null) {
            throw new IllegalArgumentException("Name and password cannot be null");
        }

        Optional<MemberListVO> existingMember = lm.findByName(member.getName());
        if (existingMember.isPresent()) {
            throw new IllegalStateException("User already exists.");
        }
        lm.join(member);
		logger.info("join Service = {}", member);
	}
	
	/*위 코드에서는 registerMember와 join 두 개의 메소드를 구현합니다. 
	 * registerMember 메소드는 Optional<String> 타입으로 name과 password를 입력받아
	 * 유효성 검사를 수행한 후,해당 회원이 이미 존재하는지 확인하고, 존재하지 않는 경우 회원 가입을 수행합니다. 
	 * join 메소드는 MemberListVO 객체를 입력받아 유효성 검사를 수행한 후, 
	 * 해당 회원이 이미 존재하는지 확인하고, 존재하지 않는 경우 회원 가입을 수행합니다.
	 */
		
		
//		 Optional<MemberListVO> existingMember = lm.findByName(member.getName());
//	        if (existingMember.isPresent()) {
//	            throw new IllegalStateException("User already exists.");
//	        }
//	        if (member.getName() == null || member.getPassword() == null) {
//	            throw new IllegalArgumentException("Name and password cannot be null");
//	        }
//	        lm.join(member); 
/*		이방법은 객체를 파라미터로(MemberListVO member) 받을때 사용 
 * 		member.getName() == null || member.getPassword() == null
 * 		이렇게 직접 == null을 지정해주는 것은 좋이 않음
 */
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
	public List<CrudtestVO> joinTable() {
		return lm.joinTable();
	}

	@Override
	public List<LogInVO> joinTableMap() {
		return lm.joinTableMap();
	}
}
