package com.tj.sp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tj.sp.dao.Customer_gradeDao;
import com.tj.sp.dto.Customer_grade;
@Service
public class Customer_gradeServiceImpl implements Customer_gradeService{
	@Autowired
	private Customer_gradeDao customer_gradeDao;
	@Override
	public Customer_grade getCustomer(String cid) {
		return customer_gradeDao.getCustomer(cid);
	}

}
