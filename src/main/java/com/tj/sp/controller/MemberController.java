package com.tj.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tj.sp.service.Customer_gradeService;
import com.tj.sp.service.Order_detail_product_midService;

@Controller
@RequestMapping("member")
public class MemberController {
	@Autowired
	private Customer_gradeService customer_gradeService;
	@Autowired
	private Order_detail_product_midService order_detail_product_midService;
	@RequestMapping(params="method=memberJoin")
	public String memberJoin() {	
		return "member/memberJoin";
	}
	@RequestMapping(params="method=grade")
	public String memberGrade(String cid, Model model) {
		model.addAttribute("member", customer_gradeService.getCustomer_grade(cid));
		model.addAttribute("count", order_detail_product_midService.cntOrder_detailByCid(cid));
		return "member/grade";
	}
}
