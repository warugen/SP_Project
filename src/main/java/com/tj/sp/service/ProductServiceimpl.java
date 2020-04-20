package com.tj.sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tj.sp.dao.ProductDao;
import com.tj.sp.dto.Product;

@Service
public class ProductServiceimpl implements ProductService{
	@Autowired
	private ProductDao productDao;
	@Override
	public List<Product> getProductList(Product product) {
		return productDao.getProductList(product);
	}

	@Override
	public int totalproduct() {
		return productDao.totalproduct();
	}

	@Override
	public Product detailProduct(String pcode) {
		return productDao.detailProduct(pcode);
	}
}
