package com.tj.sp.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tj.sp.dto.Cart;
import com.tj.sp.service.CartService;
import com.tj.sp.service.CustomerService;

@Controller
@RequestMapping("test")
public class TestController {
	@Autowired 
	private CartService cartservice;
	@Autowired
	private CustomerService customerService;
	@RequestMapping(params="method=cart", method =RequestMethod.GET)
	public String cart(Model model) {
		model.addAttribute("list",cartservice.listCartByCid("aaa"));
		return "cart/cart";
	}
	@RequestMapping(params="method=listcart", method =RequestMethod.GET)
	public String listcart(Model model) {
		model.addAttribute("customer",customerService.getCustomer("aaa"));
		model.addAttribute("list",cartservice.listCartByCid("aaa"));
		return "test";
	}
	
	@RequestMapping(params="method=listCartByCartno", method =RequestMethod.GET)
	public String listCartByCartno(Model model, HttpServletRequest request) {
		Enumeration<String> e = request.getParameterNames();
		String[] cartnos = null;
		while ( e.hasMoreElements() ){
			String name = (String) e.nextElement();
			cartnos = request.getParameterValues(name);		
		}		
		model.addAttribute("cartnos", cartnos);
		return "testResult";
	}
	@RequestMapping(params="method=cart_price_ajax", method =RequestMethod.GET)
	public String cart_price_ajax(Model model, String cartno, String cartcount) {
		Cart cart = new Cart();
		cart.setCartno(cartno);
		cart.setCartcount(Integer.parseInt(cartcount));
		cartservice.updateCart(cart);
		model.addAttribute("cart",cartservice.CartPrice(cartno));
		return "cart/cart_price_ajax";
	}
	@RequestMapping(params="method=cart_price_ajax_sum", method =RequestMethod.GET)
	public String cart_price_ajax_sum(Model model, String cartno) {
		model.addAttribute("cart",cartservice.CartPrice(cartno));
		return "cart/cart_price_ajax_sum";
	}
	
}
