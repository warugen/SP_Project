package com.tj.sp.service;

import java.util.List;

import com.tj.sp.dto.Product;

public interface ProductService {
	public List<Product> getProductList(Product product);
	public int totalproduct();
	public Product detailProduct(String pcode);
}
