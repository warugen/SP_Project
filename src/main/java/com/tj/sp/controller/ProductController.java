package com.tj.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tj.sp.dto.Product_qna;
import com.tj.sp.service.Product_qnaService;
import com.tj.sp.util.Paging;

@Controller
@RequestMapping("product_qna")
public class ProductController {
	@Autowired
	private Product_qnaService  product_qnaService;
	@RequestMapping(params="method=detailProduct" )
	public String detailProduct() {
		return "product_qna/detailProduct";
	}
@RequestMapping(params="product_qnaList", method=RequestMethod.GET)
	public String product_qnaList(Product_qna product_qna,String pageNum,Model model) {
		Paging paging = new Paging(product_qnaService.qnaCnt(),pageNum,10,5);
		product_qna.setStartrow(paging.getStartRow());
		product_qna.setEndrow(paging.getEndRow());
		model.addAttribute("product_qna",product_qnaService.productQnaList(product_qna, pageNum));
		model.addAttribute("paging",paging);
		return "forward:product_qna/detailProduct";
	}

}
