package com.go.model;

public class MemberListVO {
	private String id;
	private String password;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	@Override
	public String toString() {
		return "MemberListVO [id=" + id + ", password=" + password + ", name=" + name + "]";
	}
	private String name;
	
	

}
