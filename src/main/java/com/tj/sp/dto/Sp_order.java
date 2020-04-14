package com.tj.sp.dto;

import java.sql.Timestamp;

public class Sp_order {
	private String    ocode     ;
	private String    oname     ;
	private String    otel	    ;
	private String    opost     ;
	private String    oaddr1    ;
	private String    oaddr2    ;
	private int       osum	    ;
	private Timestamp otime     ;
	private String    odelivery	;
	private String    ostatus	;
	private String    cid       ;
	public Sp_order() {}
	public String getOcode() {
		return ocode;
	}
	public void setOcode(String ocode) {
		this.ocode = ocode;
	}
	public String getOname() {
		return oname;
	}
	public void setOname(String oname) {
		this.oname = oname;
	}
	public String getOtel() {
		return otel;
	}
	public void setOtel(String otel) {
		this.otel = otel;
	}
	public String getOpost() {
		return opost;
	}
	public void setOpost(String opost) {
		this.opost = opost;
	}
	public String getOaddr1() {
		return oaddr1;
	}
	public void setOaddr1(String oaddr1) {
		this.oaddr1 = oaddr1;
	}
	public String getOaddr2() {
		return oaddr2;
	}
	public void setOaddr2(String oaddr2) {
		this.oaddr2 = oaddr2;
	}
	public int getOsum() {
		return osum;
	}
	public void setOsum(int osum) {
		this.osum = osum;
	}
	public Timestamp getOtime() {
		return otime;
	}
	public void setOtime(Timestamp otime) {
		this.otime = otime;
	}
	public String getOdelivery() {
		return odelivery;
	}
	public void setOdelivery(String odelivery) {
		this.odelivery = odelivery;
	}
	public String getOstatus() {
		return ostatus;
	}
	public void setOstatus(String ostatus) {
		this.ostatus = ostatus;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	@Override
	public String toString() {
		return "Sp_order [ocode=" + ocode + ", oname=" + oname + ", otel=" + otel + ", opost=" + opost + ", oaddr1="
				+ oaddr1 + ", oaddr2=" + oaddr2 + ", osum=" + osum + ", otime=" + otime + ", odelivery=" + odelivery
				+ ", ostatus=" + ostatus + ", cid=" + cid + "]";
	}
	

}
