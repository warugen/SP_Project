package com.tj.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tj.sp.dto.Product_Product_option;
import com.tj.sp.service.ProductService;
import com.tj.sp.util.Paging;

@Controller
public class MainController {
	@Autowired
	private ProductService productService;
	@RequestMapping(value="main")
	public String main(String pagenum, Model model, Product_Product_option product_Product_option) {
		Paging paging = new Paging(productService.cntProduct(), pagenum, 8, 3);
		model.addAttribute("paging", paging);
		model.addAttribute("joinList", productService.product_Product_optionList(pagenum, product_Product_option));
		return "main/main";
	}
	@RequestMapping(value="main23")
	public String main23() {
		return "main";
	}
}
