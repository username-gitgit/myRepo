package com.go.model;

import java.sql.Date;

public class CrudtestVO {
	private String id;
	private String name;
	private int type;
	private Date birth;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
		return "CrudtestVO [id=" + id + ", name=" + name + ", type=" + type + ", birth=" + birth + "]";
	}

}
