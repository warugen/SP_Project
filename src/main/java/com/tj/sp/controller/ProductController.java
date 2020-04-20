
package com.tj.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.sp.dto.Product;
import com.tj.sp.service.ProductService;

@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "productInput", method = RequestMethod.GET)
	public String productInput() {
		return "product/productInput";
	}
	@RequestMapping(value = "inputTest", method = RequestMethod.POST)
	public String inputTest(Model model, MultipartHttpServletRequest mRequest, Product product) {
		productService.registerProduct(mRequest, product);
		model.addAttribute("product", product);
		return "product/inputTest";
	}
}