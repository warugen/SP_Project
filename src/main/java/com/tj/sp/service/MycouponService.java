package com.tj.sp.service;

import java.util.List;

import com.tj.sp.dto.Mycoupon;

public interface MycouponService {
	public List<Mycoupon> listMycoupon(String cid);
	public Mycoupon getMycoupon(String chnum);
}
