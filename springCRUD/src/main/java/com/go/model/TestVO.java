package com.go.model;

import java.sql.Date;

public class TestVO {
	private String id;
	private int type;
	private Date birth;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	@Override
	public String toString() {
		return "TestVO [id=" + id + ", type=" + type + ", birth=" + birth + "]";
	}
	
	
	

}
