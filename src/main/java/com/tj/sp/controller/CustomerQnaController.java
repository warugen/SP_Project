package com.tj.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tj.sp.dto.Customer_qna;
import com.tj.sp.service.CustomerQnaService;

@Controller
@RequestMapping("customerQna")
public class CustomerQnaController {
	@Autowired
	private CustomerQnaService qService;
	
	// 게시판 리스트화면 호출
	@RequestMapping(params="method=qnaList")
	public String qnaList(String pageNum, Model model, Customer_qna qna) {
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("list", qService.customerQnaList());
		return "cqna/qnaList";
	}

}
