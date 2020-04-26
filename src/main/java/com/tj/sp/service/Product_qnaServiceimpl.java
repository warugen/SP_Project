package com.tj.sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tj.sp.dao.Product_qnaDao;
import com.tj.sp.dto.Product;
import com.tj.sp.dto.Product_qna;
import com.tj.sp.util.Paging;
@Service
public class Product_qnaServiceimpl implements Product_qnaService {
	@Autowired
	private Product_qnaDao product_qnaDao;
	@Override
	public int writeQna(Product_qna product_qna) {
		product_qna.setPqcomplete("0");
		System.out.println("글쓰기"+product_qna);
		return product_qnaDao.writeQna(product_qna);
	}

	@Override
	public int modifyQna(Product_qna product_qna) {
		System.out.println("글수정"+product_qna);
		return product_qnaDao.modifyQna(product_qna);
	}

	@Override
	public List<Product_qna> productQnaList(String pagenum) {
		Paging paging = new Paging(product_qnaDao.qnaCnt(),pagenum,10,5);
		Product_qna product_qna = new Product_qna();
		product_qna.setStartrow(paging.getStartrow());
		product_qna.setEndrow(paging.getEndrow());
		product_qna.setPcode("2");
		return product_qnaDao.productQnaList(product_qna);
	}

	@Override
	public int deleteQna(String pqcode) {
		return product_qnaDao.deleteQna(pqcode);
	}

	@Override
	public Product_qna getQna(Product_qna product_qna) {
		return product_qnaDao.getQna(product_qna);
	}

	@Override
	public int qnaCnt() {
		return product_qnaDao.qnaCnt();
	}

	@Override
	public List<Product_qna> unansweredQnaList(Product product, String pagenum) {
		Paging paging = new Paging(product_qnaDao.cntUnansweredQnaList(product),pagenum,10,5);
		product.setStartrow(paging.getStartrow());
		product.setEndrow(paging.getEndrow());
		return product_qnaDao.unansweredQnaList(product);
	}

	@Override
	public int cntUnansweredQnaList(Product product) {
		return product_qnaDao.cntUnansweredQnaList(product);
	}
}
