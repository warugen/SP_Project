package com.tj.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tj.sp.dto.Product;
import com.tj.sp.dto.Product_qna;
import com.tj.sp.service.ProductService;
import com.tj.sp.service.Product_qnaService;
import com.tj.sp.util.Paging;

@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private Product_qnaService  product_qnaService;
	@RequestMapping(params="method=detailProduct" )
	public String detailProduct(String pcode,Model model,String pagenum) {
		Paging paging = new Paging(product_qnaService.qnaCnt(),pagenum,10,5);
		model.addAttribute("product_qna",product_qnaService.productQnaList(pagenum));
		model.addAttribute("paging",paging);
		model.addAttribute("detailProduct",productService.getProduct(pcode));
		return "product/detailProduct";
	}

}
