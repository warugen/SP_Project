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
	public List<Product_option> product_optionList(Product_option product_option) {
		return product_optionDao.product_optionList(product_option);
	}

	@Override
	public int registerProduct_option(Product_option product_option) {
		return product_optionDao.registerProduct_option(product_option);
	}

	@Override
	public Product_option getProduct_option(String pocode) {
		return product_optionDao.getProduct_option(pocode);
	}

}
