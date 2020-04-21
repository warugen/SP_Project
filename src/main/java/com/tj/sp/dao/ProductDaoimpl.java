package com.tj.sp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tj.sp.dto.Product;
@Repository
public class ProductDaoimpl implements ProductDao{
	@Autowired
	private SqlSession sessionTemplate;
	@Override
	public List<Product> getProductList(Product product) {
		return sessionTemplate.selectList("getProductList",product);
	}
	@Override
	public int totalproduct() {
		return sessionTemplate.selectOne("totalproduct");
	}
	
	@Override
	public Product detailProduct(String pcode) {
		return sessionTemplate.selectOne("detailProduct",pcode);
	}
	@Override
	public List<Product> productList(Product product) {
		return sessionTemplate.selectList("productList", product);
	}
	@Override
	public List<Product> marketList(Product product) {
		return sessionTemplate.selectList("marketList", product);
	}
	@Override
	public Product getProduct(String pcode) {
		return sessionTemplate.selectOne("getProduct", pcode);
	}
	@Override
	public int registerProduct(Product product) {
		return sessionTemplate.insert("registerProduct", product);
	}
	@Override
	public int modifyProduct(Product product) {
		return sessionTemplate.update("modifyProduct", product);
	}
	@Override
	public int deleteProduct(Product product) {
		return sessionTemplate.delete("deleteProduct", product);
	}
	@Override
	public int cntProduct() {
		return sessionTemplate.selectOne("cntProduct");
	}
}
