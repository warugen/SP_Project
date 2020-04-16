package com.tj.sp.dao;

import java.util.List;

import com.tj.sp.dto.Cart_Product_option;

public interface Cart_Product_optionDao {
	public List<Cart_Product_option> listCart_Product_option(List<Integer> cartnos);
}
