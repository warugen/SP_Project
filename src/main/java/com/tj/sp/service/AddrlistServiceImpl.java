package com.tj.sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tj.sp.dao.AddrlistDao;
import com.tj.sp.dto.Addrlist;
@Service
public class AddrlistServiceImpl implements AddrlistService {
	@Autowired
	private AddrlistDao addrlistDao;
	@Override
	public List<Addrlist> listAddrlist(String cid) {
		return addrlistDao.listAddrlist(cid);
	}

}
