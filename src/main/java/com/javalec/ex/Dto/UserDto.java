package com.javalec.ex.Dto;

import java.sql.Timestamp;

public class UserDto {
	
	private String user_id;
	private String user_pw;
	private String user_name;
	private Timestamp join_date;
	
	public UserDto() {	}
	
	
	public UserDto(String user_id, String user_pw, String user_name, Timestamp join_date) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.join_date = join_date;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getUser_pw() {
		return user_pw;
	}


	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}


	public String getUser_name() {
		return user_name;
	}


	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}


	public Timestamp getJoin_date() {
		return join_date;
	}


	public void setJoin_date(Timestamp join_date) {
		this.join_date = join_date;
	}
	
	
	
	

}
