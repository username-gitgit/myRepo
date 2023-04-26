package com.go.model;

import java.util.List;

public class LogInVO {
	private String id;
	private String password;
	private String name;
	private List<TestVO> testList;
	
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
	
	public List<TestVO> getTest() {
		return testList;
	}
	public void setTest(List<TestVO> test) {
		this.testList = test;
	}
	@Override
	public String toString() {
		return "LogInVO [id=" + id + ", password=" + password + ", name=" + name + ", testList=" + testList + "]";
	}

}
