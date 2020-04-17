package com.tj.sp.dao;

import java.util.List;

import com.tj.sp.dto.Product;

public interface ProductDao {
	public List<Product> getProductList(Product product);
	public int totalproduct();
}
