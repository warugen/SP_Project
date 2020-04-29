package com.tj.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tj.sp.dto.Cart;
import com.tj.sp.dto.Customer;
import com.tj.sp.dto.Sp_order;
import com.tj.sp.service.AddrlistService;
import com.tj.sp.service.CartService;
import com.tj.sp.service.CustomerService;
import com.tj.sp.service.Customer_gradeService;
import com.tj.sp.service.MycouponService;
import com.tj.sp.service.Order_detailService;
import com.tj.sp.service.Sp_orderService;

@Controller
@RequestMapping("cart")
public class CartController {
	@Autowired 
	private CartService cartservice;
	@Autowired
	private MycouponService mycouponService;
	@Autowired
	private Customer_gradeService customergradeService;
	@Autowired
	private AddrlistService addrlistService;
	@Autowired
	private Sp_orderService sp_orderService;
	@Autowired
	private Order_detailService order_detailService;
	@Autowired
	private CustomerService customerService;
	//장바구니 답기
	@RequestMapping(params="method=insert", method =RequestMethod.GET)
	public String insertCart(Model model, String cid, String[] pocode, String[] cartcount ) {
		cartservice.insertCart(cid, pocode, cartcount);
		return "cart/insertCart";
	}
	
	//장바구니 호출
	@RequestMapping(params="method=cart", method =RequestMethod.GET)
	public String cart(Model model) {
		model.addAttribute("list",cartservice.listCartByCid("aaa"));
		return "cart/cart";
	}
	
	//장바구니 내 금액변경 event
	@RequestMapping(params="method=cart_price_ajax", method =RequestMethod.GET)
	public String cart_price_ajax(Model model, Cart cart) {
		cartservice.updateCart(cart);
		model.addAttribute("cart",cartservice.CartPrice(cart.getCartno()));
		return "cart/cart_price_ajax";
	}
	@RequestMapping(params="method=cart_price_ajax_sum", method =RequestMethod.GET)
	public String cart_price_ajax_sum(Model model, String cartno) {
		model.addAttribute("cart",cartservice.CartPrice(cartno));
		return "cart/cart_price_ajax_sum";
	}
	
	//장바구니 물품 제거
	@RequestMapping(params="method=deleteCart", method =RequestMethod.GET)
	public String deleteCart(Model model, String cartno) {
		model.addAttribute("cart",cartservice.deleteCart(cartno));
		return "forward:cart.do?method=cart";
	}
	
	//주문 페이지 호출
	@RequestMapping(params="method=orderView", method =RequestMethod.GET)
	public String orderView(Model model, String[] cartno, String cid) {
		cid="aaa";	//임시 id 처리
		model.addAttribute("coupon",mycouponService.listMycoupon(cid));
		model.addAttribute("list", cartservice.listCartByCartno(cartno));
		model.addAttribute("customer", customergradeService.getCustomer_grade(cid));
		model.addAttribute("addrlist", addrlistService.listAddrlist(cid));
		return "cart/orderView";
	}
	//주문상세페이지에서 바로 주문페이지로 
	@RequestMapping(params="method=orderDirect", method =RequestMethod.GET)
	public String orderDirect(Model model, String cid, String[] pocode, String[] cartcount ) {
		cid="aaa";	//임시 id 처리
		int num = cartservice.insertCart(cid, pocode, cartcount);
		String[] cartno = cartservice.getArrayCartno(num);
		model.addAttribute("coupon",mycouponService.listMycoupon(cid));
		model.addAttribute("list", cartservice.listCartByCartno(cartno));
		model.addAttribute("customer", customergradeService.getCustomer_grade(cid));
		model.addAttribute("addrlist", addrlistService.listAddrlist(cid));
		return "cart/orderView";
	}
	//주문하기완료
	@RequestMapping(params="method=orderCompl", method =RequestMethod.GET)
	public String orderCompl(String[] pocode, String[] cuid, String[] odcount, String[] odunit, String[] chnum,
			Model model, Sp_order sp_order, Customer customer, String[] cartno) {
		String cid = customer.getCid();
		sp_order.setCid(cid);
		model.addAttribute("orderResult", sp_orderService.insertSp_order(sp_order));
		order_detailService.insertOrder_detail(pocode, cuid, odcount, odunit);
		customerService.upPoint(customer.getCid());		//구매 포인트 적립
		customerService.usePoint(customer);				//포인트 적립
		mycouponService.useMycoupon(chnum);				//사용쿠폰제거
		cartservice.buyCart(cartno);					//구매 카트 제거
		customergradeService.updateGrade(cid);			//고객등급 조정
		return "cart/orderCompl";
	}
	
}
