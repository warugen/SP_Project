package com.tj.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tj.sp.dto.Product_option;
import com.tj.sp.service.Product_optionService;


@Controller
@RequestMapping("product_option")
public class Product_optionController {
	@Autowired
	private Product_optionService product_optionService;
	@RequestMapping(params="method=product_optionList")
	public String product_optionList(Model model, Product_option product_option) {
		model.addAttribute("product_oprionList", product_optionService.product_optionList(product_option));
		return "product_option/product_optionList";
	}
	@RequestMapping(params="method=registerProduct_option", method=RequestMethod.GET)
	public String registerProduct_option() {
		return "product_option/registerProduct_option";
	}
	@RequestMapping(params="method=RProduct_option")
	public String RProduct_option(Product_option product_option, Model model) {
		product_optionService.registerProduct_option(product_option);
		model.addAttribute("product_optionList", product_optionService.registerProduct_option(product_option));
		return "product_option/product_optionList";
	}
}
