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
public class Product_qnaController {
	@Autowired
	private Product_qnaService  product_qnaService;
	/*
	 * @RequestMapping(params="product_qnaList", method=RequestMethod.GET) public
	 * String product_qnaList(String pageNum,Model model) { Paging paging = new
	 * Paging(product_qnaService.qnaCnt(),pageNum,10,5);
	 * model.addAttribute("product_qna",product_qnaService.productQnaList(pageNum));
	 * model.addAttribute("paging",paging); return "product/detailProduct"; }
	 */
	@RequestMapping(params="method=writeQnaForm")
	public String writeQnaForm() {
		return "product_qna/writeQnaForm";
	}
	@RequestMapping(params="product_qna.do?method=writeQna")
	public String writeQna(Product_qna product_qna,Model model) {
		model.addAttribute("writeQnaResult",product_qnaService.writeQna(product_qna));
		return "forward:product.do?method=detailProduct";
	}
}
