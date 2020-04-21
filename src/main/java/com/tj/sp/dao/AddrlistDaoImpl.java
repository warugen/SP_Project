package com.tj.sp.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tj.sp.dto.Addrlist;
@Repository
public class AddrlistDaoImpl implements AddrlistDao {
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	@Override
	public List<Addrlist> listAddrlist(String cid) {
		return sessionTemplate.selectList("listAddrlist", cid);
	}

}
