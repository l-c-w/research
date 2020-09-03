package com.javalec.ex.Dto;

import java.sql.Timestamp;

public class RsDto {

	private int rs_num;
	private String rs_title;
	private Timestamp rs_sdate;
	private Timestamp rs_edate;
	private String rs_writer;
	private int rs_qcount;
	private Timestamp rs_rdate;
	private Timestamp rs_udate;
	private int rs_hit;
	
	public RsDto() {	}

	public RsDto(int rs_num, String rs_title, Timestamp rs_sdate, Timestamp rs_edate, String rs_writer, int rs_qcount,
			Timestamp rs_rdate, Timestamp rs_udate, int rs_hit) {
		super();
		this.rs_num = rs_num;
		this.rs_title = rs_title;
		this.rs_sdate = rs_sdate;
		this.rs_edate = rs_edate;
		this.rs_writer = rs_writer;
		this.rs_qcount = rs_qcount;
		this.rs_rdate = rs_rdate;
		this.rs_udate = rs_udate;
		this.rs_hit = rs_hit;
	}

	public int getRs_num() {
		return rs_num;
	}

	public void setRs_num(int rs_num) {
		this.rs_num = rs_num;
	}

	public String getRs_title() {
		return rs_title;
	}

	public void setRs_title(String rs_title) {
		this.rs_title = rs_title;
	}

	public Timestamp getRs_sdate() {
		return rs_sdate;
	}

	public void setRs_sdate(Timestamp rs_sdate) {
		this.rs_sdate = rs_sdate;
	}

	public Timestamp getRs_edate() {
		return rs_edate;
	}

	public void setRs_edate(Timestamp rs_edate) {
		this.rs_edate = rs_edate;
	}

	public String getRs_writer() {
		return rs_writer;
	}

	public void setRs_writer(String rs_writer) {
		this.rs_writer = rs_writer;
	}

	public int getRs_qcount() {
		return rs_qcount;
	}

	public void setRs_qcount(int rs_qcount) {
		this.rs_qcount = rs_qcount;
	}

	public Timestamp getRs_rdate() {
		return rs_rdate;
	}

	public void setRs_rdate(Timestamp rs_rdate) {
		this.rs_rdate = rs_rdate;
	}

	public Timestamp getRs_udate() {
		return rs_udate;
	}

	public void setRs_udate(Timestamp rs_udate) {
		this.rs_udate = rs_udate;
	}

	public int getRs_hit() {
		return rs_hit;
	}

	public void setRs_hit(int rs_hit) {
		this.rs_hit = rs_hit;
	}
	
	
}
