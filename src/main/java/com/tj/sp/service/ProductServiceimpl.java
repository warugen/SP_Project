package com.tj.sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

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

	@Override
	public List<Product> productList(String pagenum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> marketList(Product product) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product getProduct(String pcode) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int registerProduct(MultipartHttpServletRequest mRequest, Product product) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyProduct(MultipartHttpServletRequest mRequest) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteProduct(Product product) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int cntProduct() {
		// TODO Auto-generated method stub
		return 0;
	}
}
