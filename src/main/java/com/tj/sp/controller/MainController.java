package com.tj.sp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping(value="main")
	public String main(Model model) {
		model.addAttribute("main");
		return "main/main";
	}
	@RequestMapping(value="main23")
	public String main23() {
		return "main";
	}
}
