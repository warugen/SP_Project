package com.tj.sp.dto;

public class Coupon {
	private String 	cuid    ;
	private String 	cuname	;
	private int 	cusail	;
	public Coupon() {}
	public String getCuid() {
		return cuid;
	}
	public void setCuid(String cuid) {
		this.cuid = cuid;
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
		return "Coupon [cuid=" + cuid + ", cuname=" + cuname + ", cusail=" + cusail + "]";
	}
	
}
