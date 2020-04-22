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
		// 고객아이디로 주소목록 가져오기
		return addrlistDao.listAddrlist(cid);
	}

	@Override
	public int registAddrlist(Addrlist addrlist) {
		// 주소목록 등록하기
		return addrlistDao.registAddrlist(addrlist);
	}

	@Override
	public int modifyAddrlist(Addrlist addrlist) {
		// 주소목록 수정하기
		return addrlistDao.modifyAddrlist(addrlist);
	}

	@Override
	public int deleteAddrlist(String addrcode) {
		// 선택한 주소목록 삭제하기
		return addrlistDao.deleteAddrlist(addrcode);
	}

}
