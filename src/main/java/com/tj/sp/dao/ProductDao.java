
package com.tj.sp.dao;

import java.util.List;

import com.tj.sp.dto.Product;

public interface ProductDao {
	public List<Product> productList(Product product);
	public List<Product> marketList(Product product);
	public Product getProduct(String pcode);
	public int registerProduct(Product product);
	public int modifyProduct(Product product);
	public int deleteProduct(Product product);
	public int cntProduct();
}
