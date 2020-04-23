/*<<<<<<< HEAD

package com.tj.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.sp.dto.Product;
import com.tj.sp.service.ProductService;
import com.tj.sp.utill.Paging;

@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired
	private ProductService productService;
	@RequestMapping(value = "productList")
	public String productlist(String pagenum, Model model) {
		Paging paging = new Paging(productService.cntProduct(), pagenum, 10, 10);
		model.addAttribute("paging", paging);
		model.addAttribute("productList", productService.productList(pagenum));
		return "product/productList";
	}
	@RequestMapping(value = "productRegister", method=RequestMethod.GET)
	public String productRegister() {
		return "product/productRegister";
	}
	@RequestMapping(value = "pRegister", method=RequestMethod.POST)
	public String pRegister(MultipartHttpServletRequest mRequest, Product product) {
		productService.registerProduct(mRequest, product);
		return "product/productRegister";
	}
	@RequestMapping(value = "productDetail")
	public String inputTest(Model model, String pcode) {
		model.addAttribute("productDetail", productService.getProduct(pcode));
		return "product/productDetail";
	}
}


=======*/
package com.tj.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.sp.dto.Product_Product_option;
import com.tj.sp.service.ProductService;
import com.tj.sp.util.Paging;

@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired
	private ProductService productService;
	@RequestMapping(params="method=detailProduct" )
	public String detailProduct(String pcode,Model model) {
		model.addAttribute("detail",productService.detailProduct(pcode));
		return "product/detailProduct";
	}
	@RequestMapping(params = "method=joinList")
	public String joinList(String pagenum, Model model, Product_Product_option ppo) {
		Paging paging = new Paging(productService.cntProduct(), pagenum, 8, 3);
		model.addAttribute("paging", paging);
		model.addAttribute("joinList", productService.product_Product_optionList(pagenum, ppo));
		return "product/joinList";
	}
	@RequestMapping(params = "method=productRegister", method=RequestMethod.GET)
	public String productRegister() {
		return "product/productRegister";
	}
	@RequestMapping(params = "method=pRegister")
	public String pRegister(MultipartHttpServletRequest mRequest, Product_Product_option ppo, Model model, String pcode, String pagenum) {
		productService.registerProduct(mRequest, ppo);
		model.addAttribute("joinList", productService.product_Product_optionList(pagenum, ppo));
		Paging paging = new Paging(productService.cntProduct(), pagenum, 8, 3);
		ppo.setStartrow(paging.getStartrow());
		ppo.setEndrow(paging.getEndrow());
		model.addAttribute("paging", paging);
		return "product/joinList";
	}
	@RequestMapping(params = "method=productDetail")
	public String productDetail(Model model, String pcode) {
		model.addAttribute("productDetail", productService.getProduct(pcode));
		return "product/productDetail";
	}
}
