package com.tj.sp.service;

import java.util.List;

import com.tj.sp.dto.Product_option;

public interface Product_optionService {
	public List<Product_option> listForCart(String pcode);
	public List<Product_option> product_optionList(Product_option product_option);
	public int registerProduct_option(Product_option product_option);
	public Product_option getProduct_option(String pocode);
}
