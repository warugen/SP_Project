package com.tj.sp.service;

import java.util.List;

import com.tj.sp.dto.Product_option;

public interface Product_optionService {
	public List<Product_option> listForCart(String pcode);
}
