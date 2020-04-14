package com.tj.sp.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.tj.sp.dto.Cart_Product_option;

public class Cart_Product_optionImpl implements Cart_Product_optionDao {
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	@Override
	public List<Cart_Product_option> listCart_Product_option(List<Integer> cartnos) {
		List<Cart_Product_option> list = sessionTemplate.selectList("listCart_Product_option", cartnos);
		return list;
	}

}
