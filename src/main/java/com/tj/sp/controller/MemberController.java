package com.tj.sp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member")
public class MemberController {
	@RequestMapping(params="method=memberJoin")
	public String memberJoin() {
		return "member/memberJoin";
	}
}
