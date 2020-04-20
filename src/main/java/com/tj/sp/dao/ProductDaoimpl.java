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
}
