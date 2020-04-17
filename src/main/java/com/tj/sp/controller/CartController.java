package com.tj.sp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tj.sp.dto.Cart;
import com.tj.sp.service.CartService;

@Controller
@RequestMapping("cart")
public class CartController {
	@Autowired 
	private CartService cartservice;
	
	//장바구니 호출
	@RequestMapping(params="method=cart", method =RequestMethod.GET)
	public String cart(Model model) {
		model.addAttribute("list",cartservice.listCartByCid("aaa"));
		return "cart/cart";
	}
	
	//장바구니 내 금액변경 event
	@RequestMapping(params="method=cart_price_ajax", method =RequestMethod.GET)
	public String cart_price_ajax(Model model, Cart cart) {
		cartservice.updateCart(cart);
		model.addAttribute("cart",cartservice.CartPrice(cart.getCartno()));
		return "cart/cart_price_ajax";
	}
	@RequestMapping(params="method=cart_price_ajax_sum", method =RequestMethod.GET)
	public String cart_price_ajax_sum(Model model, String cartno) {
		model.addAttribute("cart",cartservice.CartPrice(cartno));
		return "cart/cart_price_ajax_sum";
	}
	
	//장바구니 물품 제거
	@RequestMapping(params="method=deleteCart", method =RequestMethod.GET)
	public String deleteCart(Model model, String cartno) {
		model.addAttribute("cart",cartservice.deleteCart(cartno));
		return "forward:cart.do?method=cart";
	}
	
	//주문 페이지 호출
	@RequestMapping(params="method=orderView", method =RequestMethod.GET)
	public String orderView(String[] cartno ,Model model, HttpServletRequest request) {
		model.addAttribute("list", cartservice.listCartByCartno(cartno));
		return "cart/orderView";
	}
}
