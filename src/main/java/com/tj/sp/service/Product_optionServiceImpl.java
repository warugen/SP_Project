package com.tj.sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tj.sp.dao.Product_optionDao;
import com.tj.sp.dto.Product_option;
@Service
public class Product_optionServiceImpl implements Product_optionService {
	@Autowired
	private Product_optionDao product_optionDao;
	@Override
	public List<Product_option> listForCart(String pcode) {
		return product_optionDao.listForCart(pcode);
	}

}
