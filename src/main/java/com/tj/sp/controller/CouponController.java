package com.tj.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tj.sp.service.MycouponService;

@Controller
@RequestMapping("coupon")
public class CouponController {
	@Autowired
	private MycouponService mycouponService;
	@RequestMapping(params="method=listMycoupon", method =RequestMethod.GET)
	public String listMycoupon(Model model) {
		model.addAttribute("list",mycouponService.listMycoupon("aaa"));
		return "coupontest";
	}
}
