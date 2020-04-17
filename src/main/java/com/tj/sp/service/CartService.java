package com.tj.sp.service;

import java.util.List;

import com.tj.sp.dto.Cart;
import com.tj.sp.dto.Cart_Product_option;

public interface CartService {
	public List<Cart_Product_option> listCartByCid(String cid);
	public int insertCart(Cart cart);
	public int deleteCart(String cartno);
	public int updateCart(Cart cart);
	
	public List<Cart_Product_option> listCartByCartno(String[] cartno);
	public Cart_Product_option CartPrice(String cartno);
}
