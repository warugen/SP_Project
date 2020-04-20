
package com.tj.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.sp.dto.Product;
import com.tj.sp.service.ProductService;
import com.tj.sp.utill.Paging;

@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired
	private ProductService productService;
	@RequestMapping(value = "productList")
	public String productlist(String pagenum, Model model) {
		Paging paging = new Paging(productService.cntProduct(), pagenum, 10, 10);
		model.addAttribute("paging", paging);
		model.addAttribute("productList", productService.productList(pagenum));
		return "product/productList";
	}
	@RequestMapping(value = "productRegister", method=RequestMethod.GET)
	public String productRegister() {
		return "product/productRegister";
	}
	@RequestMapping(value = "pRegister", method=RequestMethod.POST)
	public String pRegister(MultipartHttpServletRequest mRequest, Product product) {
		productService.registerProduct(mRequest, product);
		return "product/productRegister";
	}
	@RequestMapping(value = "productDetail")
	public String inputTest(Model model, String pcode) {
		model.addAttribute("productDetail", productService.getProduct(pcode));
		return "product/productDetail";
	}
}













