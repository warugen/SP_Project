
package com.tj.sp.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.sp.dto.Product;

public interface ProductService {
	public List<Product> productList(Product product);
	public List<Product> marketList(Product product);
	public Product getProduct(String pcode);
	public int registerProduct(MultipartHttpServletRequest mRequest, Product product);
	public int modifyProduct(MultipartHttpServletRequest mRequest);
	public int deleteProduct(Product product);
	public int cntProduct();
}
