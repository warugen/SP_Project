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

import com.tj.sp.dto.Product;
import com.tj.sp.dto.Product_qna;
import com.tj.sp.dto.Review;
import com.tj.sp.service.ProductService;
import com.tj.sp.service.Product_qnaService;
import com.tj.sp.service.ReviewService;
import com.tj.sp.util.Paging;

@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private ReviewService reviewService;
	@RequestMapping(params="method=detailProduct" )
	public String detailProduct(String pcode,Model model, String review_pagenum) {
		model.addAttribute("detail",productService.detailProduct(pcode));
		Review review = new Review();
		review.setPcode("1");
		model.addAttribute("review", reviewService.listReview(review, review_pagenum));
		return "product/detailProduct";
	}

}
