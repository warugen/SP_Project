package com.tj.sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tj.sp.dao.MycouponDao;
import com.tj.sp.dto.Mycoupon;
@Service
public class MycouponServiceImpl implements MycouponService {
	@Autowired
	MycouponDao mycoupondao;
	@Override
	public List<Mycoupon> listMycoupon(String cid) {
		return mycoupondao.listMycoupon(cid);
	}

	@Override
	public Mycoupon getMycoupon(String chnum) {
		return mycoupondao.getMycoupon(chnum);
	}

}
