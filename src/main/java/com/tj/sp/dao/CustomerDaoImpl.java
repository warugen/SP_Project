package com.tj.sp.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tj.sp.dto.Customer;
@Repository
public class CustomerDaoImpl implements CustomerDao {
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	@Override
	public Customer getCustomer(String cid) {
		return sessionTemplate.selectOne("getCustomer" ,cid);
	}

}
