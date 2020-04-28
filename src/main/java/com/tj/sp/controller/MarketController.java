package com.tj.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tj.sp.dto.Product;
import com.tj.sp.service.MarketService;
import com.tj.sp.service.ProductService;
import com.tj.sp.service.Product_qnaService;
import com.tj.sp.util.Paging;

@Controller
@RequestMapping("market")
public class MarketController {
	@Autowired
	private ProductService productService;
	@Autowired
	private MarketService marketService;
	@Autowired
	private Product_qnaService product_qnaService;
	@RequestMapping(params = "method=marketmain")
	public String marketMain(String pagenum, Model model, Product product, String schword, String mid) {
		//마켓정보 불러오기
		model.addAttribute("market_header",marketService.getMarket(mid));		
		//마켓메인용 제품 리스트 뿌리기
		Paging paging = new Paging(productService.cntMarketMain(product), pagenum, 8, 3);
		model.addAttribute("paging", paging);
		model.addAttribute("marketmain", productService.marketMain(product, pagenum, schword));
		return "market/marketmain";
	}
	@RequestMapping(params ="method=unAnswerList")
	public String cntUnansweredQnaList(String pagenum, Model model, Product product) {
		Paging paging = new Paging(product_qnaService.cntUnansweredQnaList(product), pagenum, 10, 5);
		model.addAttribute("paging", paging);
		model.addAttribute("unAnswerList", product_qnaService.unansweredQnaList(product, pagenum));
		return "market/unAnswerList";
	}
	
	@RequestMapping(params ="method=marketJoin")
	public String marketJoin() {
		return "market/marketJoin";
	}
	
	
}
