package com.tj.sp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tj.sp.dao.CustomerDao;
import com.tj.sp.dto.Customer;
@Service
public class CustomerServiceImpl implements CustomerService{
	@Autowired
	private CustomerDao customerDao;
	@Override
	public Customer getCustomer(String cid) {
		return customerDao.getCustomer(cid);
	}

}
