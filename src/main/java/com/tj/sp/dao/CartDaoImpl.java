package com.tj.sp.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tj.sp.dto.Cart;
import com.tj.sp.dto.Cart_Product_option;
@Repository
public class CartDaoImpl implements CartDao {
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	@Override
	public List<Cart_Product_option> listCartByCid(String cid) {
		return sessionTemplate.selectList("listCartByCid", cid);
	}

	@Override
	public int insertCart(Cart cart) {
		return sessionTemplate.insert("insertCart",cart);
	}

	@Override
	public int deleteCart(String cartno) {
		return sessionTemplate.delete("deleteCart",cartno);
	}

	@Override
	public int updateCart(Cart cart) {
		return sessionTemplate.update("updateCart",cart);
	}

	@Override
	public List<Cart_Product_option> listCartByCartno(List<String> cartnos) {
		return sessionTemplate.selectList("listCartByCartno",cartnos);
	}

	@Override
	public Cart_Product_option CartPrice(String cartno) {
		return sessionTemplate.selectOne("CartPrice",cartno);
	}

}
