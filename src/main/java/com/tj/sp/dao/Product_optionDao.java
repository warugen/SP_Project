package com.tj.sp.dao;

import java.util.List;

import com.tj.sp.dto.Product_option;

public interface Product_optionDao {
	public List<Product_option> listForCart(String pcode);
}
