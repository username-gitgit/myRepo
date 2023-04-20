package com.obj.model;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;

public class MemberVO {
	
	@NotEmpty(message = "이메일을 입력해주세요.")
	private String email;
	@NotEmpty
	private String password;
	@NotEmpty(message = "이름을 입력해주세요.")
	private String name;
	@NotEmpty
	@Min(value = 18, message = "미성년자는 가입할 수 없습니다.")
	private String residentid;
	private String phone;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getResidentid() {
		return residentid;
	}
	public void setResidentid(String residentid) {
		this.residentid = residentid;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "MemberVO [email=" + email + ", password=" + password + ", name=" + name + ", residentid=" + residentid
				+ ", phone=" + phone + "]";
	}
	
	
	

}
