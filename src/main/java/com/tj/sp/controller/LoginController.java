package com.tj.sp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tj.sp.dao.CustomerDao;

@Controller
@RequestMapping("login")
public class LoginController {
	
	@Autowired
	private CustomerDao customerDao;
	
	@RequestMapping(params="method=loginForm")
	public String loginForm() {
		
		return "login/login";
	}
	
	@RequestMapping(params="method=login")
	public String login(HttpServletRequest request) {
		System.out.println("===============method=login===============");
		
		String csnsid = request.getParameter("snsid");
		String provider = request.getParameter("provider");
		String snsemail = request.getParameter("snsemail");
		
		System.out.println("snsid : " + csnsid);
		System.out.println("provider : " + provider);
		System.out.println("snsemail : " + snsemail);
		
		//customerDao.snsConfirm(customer);
		int result = customerDao.snsIdConfirm(csnsid);
		System.out.println("result"+result);
		
		//return "login/login";
		return "main/main";
	}
	
	@RequestMapping(params="method=kakao")
	public String loginKakao(HttpServletRequest request) {
		System.out.println("kakao login!!!");
		String csnsid = request.getParameter("snsid");
		String provider = request.getParameter("provider");
		String snsemail = request.getParameter("snsemail");
		
		System.out.println("snsid : " + csnsid);
		System.out.println("provider : " + provider);
		System.out.println("snsemail : " + snsemail);
		
		//customerDao.snsConfirm(customer);
		int result = customerDao.snsIdConfirm(csnsid);
		System.out.println("result"+result);
		
		return "main/main";
	}
	
	@RequestMapping(params="method=google")
	public String loginGoogle(HttpServletRequest request) {
		System.out.println("google login!!!");
		return "main/main";
	}
	
	@RequestMapping(params="method=logiout")
	public String logout() {
		
		return "login/login";
	}
}
