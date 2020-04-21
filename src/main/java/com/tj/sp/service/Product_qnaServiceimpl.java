package com.tj.sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tj.sp.dao.Product_qnaDao;
import com.tj.sp.dto.Product_qna;
import com.tj.sp.util.Paging;
@Service
public class Product_qnaServiceimpl implements Product_qnaService {
	@Autowired
	private Product_qnaDao product_qnaDao;
	@Override
	public int writeQna(Product_qna product_qna) {
		return product_qnaDao.writeQna(product_qna);
	}

	@Override
	public int modifyQna(Product_qna product_qna) {
		return product_qnaDao.modifyQna(product_qna);
	}

	@Override
	public List<Product_qna> productQnaList(Product_qna product_qna,String pageNum) {
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
}
