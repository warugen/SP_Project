package com.tj.sp.dto;

public class Mycoupon {
	private String  chnum 	;
	private String  cuid  	;
	private String  cid   	;
	private String 	cuname	;
	private int 	cusail	;
	public Mycoupon() {}
	public String getChnum() {
		return chnum;
	}
	public void setChnum(String chnum) {
		this.chnum = chnum;
	}
	public String getCuid() {
		return cuid;
	}
	public void setCuid(String cuid) {
		this.cuid = cuid;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCuname() {
		return cuname;
	}
	public void setCuname(String cuname) {
		this.cuname = cuname;
	}
	public int getCusail() {
		return cusail;
	}
	public void setCusail(int cusail) {
		this.cusail = cusail;
	}
	@Override
	public String toString() {
		return "Mycoupon [chnum=" + chnum + ", cuid=" + cuid + ", cid=" + cid + ", cuname=" + cuname + ", cusail="
				+ cusail + "]";
	}
	
}
