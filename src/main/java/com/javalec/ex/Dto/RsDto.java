package com.javalec.ex.Dto;

import java.sql.Date;
import java.sql.Date;

public class RsDto {

	private int rs_num;
	private String rs_title;
	private Date rs_sdate;
	private Date rs_edate;
	private String rs_writer;
	private int rs_qcount;
	private Date rs_rdate;
	private Date rs_udate;
	private int rs_hit;
	
	public RsDto() {	}

	public RsDto(int rs_num, String rs_title, Date rs_sdate, Date rs_edate, String rs_writer, int rs_qcount,
			Date rs_rdate, Date rs_udate, int rs_hit) {
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

	public Date getRs_sdate() {
		return rs_sdate;
	}

	public void setRs_sdate(Date rs_sdate) {
		this.rs_sdate = rs_sdate;
	}

	public Date getRs_edate() {
		return rs_edate;
	}

	public void setRs_edate(Date rs_edate) {
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

	public Date getRs_rdate() {
		return rs_rdate;
	}

	public void setRs_rdate(Date rs_rdate) {
		this.rs_rdate = rs_rdate;
	}

	public Date getRs_udate() {
		return rs_udate;
	}

	public void setRs_udate(Date rs_udate) {
		this.rs_udate = rs_udate;
	}

	public int getRs_hit() {
		return rs_hit;
	}

	public void setRs_hit(int rs_hit) {
		this.rs_hit = rs_hit;
	}
	
	
}
