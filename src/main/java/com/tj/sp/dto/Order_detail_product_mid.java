package com.tj.sp.dto;

import java.sql.Timestamp;

public class Order_detail_product_mid {
	private String ocode;
	private String oname;
	private String otel;	
	private String opost;	
	private String oaddr1;	
	private String oaddr2;	
	private int    osum;		
	private Timestamp otime;	
	private String odelivery;
	private String ostatus;	
	private String cid;		
	private String odcode;	
	private String cuid;		
	private int odcount;	
	private int odunit;	
	private String pocode; 	
	private String poname; 	
	private int ponet; 	
	private int postock; 	
	private int poprice; 	
	private String typecode; 
	private String pcode;
	private String mid;
	
	private int    startrow		;
	private int    endrow		;
	private String schitem		;
	private String schword		;
	public Order_detail_product_mid() {}
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
	public String getOdcode() {
		return odcode;
	}
	public void setOdcode(String odcode) {
		this.odcode = odcode;
	}
	public String getCuid() {
		return cuid;
	}
	public void setCuid(String cuid) {
		this.cuid = cuid;
	}
	public int getOdcount() {
		return odcount;
	}
	public void setOdcount(int odcount) {
		this.odcount = odcount;
	}
	public int getOdunit() {
		return odunit;
	}
	public void setOdunit(int odunit) {
		this.odunit = odunit;
	}
	public String getPocode() {
		return pocode;
	}
	public void setPocode(String pocode) {
		this.pocode = pocode;
	}
	public String getPoname() {
		return poname;
	}
	public void setPoname(String poname) {
		this.poname = poname;
	}
	public int getPonet() {
		return ponet;
	}
	public void setPonet(int ponet) {
		this.ponet = ponet;
	}
	public int getPostock() {
		return postock;
	}
	public void setPostock(int postock) {
		this.postock = postock;
	}
	public int getPoprice() {
		return poprice;
	}
	public void setPoprice(int poprice) {
		this.poprice = poprice;
	}
	public String getTypecode() {
		return typecode;
	}
	public void setTypecode(String typecode) {
		this.typecode = typecode;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public int getStartrow() {
		return startrow;
	}
	public void setStartrow(int startrow) {
		this.startrow = startrow;
	}
	public int getEndrow() {
		return endrow;
	}
	public void setEndrow(int endrow) {
		this.endrow = endrow;
	}
	public String getSchitem() {
		return schitem;
	}
	public void setSchitem(String schitem) {
		this.schitem = schitem;
	}
	public String getSchword() {
		return schword;
	}
	public void setSchword(String schword) {
		this.schword = schword;
	}
	@Override
	public String toString() {
		return "Order_detail_product_mid [ocode=" + ocode + ", oname=" + oname + ", otel=" + otel + ", opost=" + opost
				+ ", oaddr1=" + oaddr1 + ", oaddr2=" + oaddr2 + ", osum=" + osum + ", otime=" + otime + ", odelivery="
				+ odelivery + ", ostatus=" + ostatus + ", cid=" + cid + ", odcode=" + odcode + ", cuid=" + cuid
				+ ", odcount=" + odcount + ", odunit=" + odunit + ", pocode=" + pocode + ", poname=" + poname
				+ ", ponet=" + ponet + ", postock=" + postock + ", poprice=" + poprice + ", typecode=" + typecode
				+ ", pcode=" + pcode + ", mid=" + mid + ", startrow=" + startrow + ", endrow=" + endrow + ", schitem="
				+ schitem + ", schword=" + schword + "]";
	}
}