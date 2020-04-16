package com.tj.sp.controller;

import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tj.sp.dto.Cart_Product_option;
import com.tj.sp.service.CartService;

@Controller
@RequestMapping("cart")
public class CartController {
	@Autowired 
	private CartService cartservice;
	@RequestMapping(params="method=listcart", method =RequestMethod.GET)
	public String listcart(Model model) {
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
}
