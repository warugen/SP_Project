package com.tj.sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tj.sp.dao.CartDao;
import com.tj.sp.dto.Cart;
import com.tj.sp.dto.Cart_Product_option;
@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private CartDao cartDao;
	@Override
	public List<Cart_Product_option> listCartByCid(String cid) {
		return cartDao.listCartByCid(cid);
	}
	@Override
	public int insertCart(Cart cart) {
		return cartDao.insertCart(cart);
	}

	@Override
	public int deleteCart(String cartno) {
		return cartDao.deleteCart(cartno);
	}

	@Override
	public int updateCart(Cart cart) {
		return cartDao.updateCart(cart);
	}
	@Override
	public List<Cart_Product_option> listCartByCartno(List<String> cartnos) {
		return cartDao.listCartByCartno(cartnos);
	}

}
