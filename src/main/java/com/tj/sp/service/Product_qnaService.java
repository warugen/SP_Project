package com.tj.sp.service;

import java.util.List;

import com.tj.sp.dto.Product_qna;

public interface Product_qnaService {
	public int writeQna(Product_qna product_qna);
	public int modifyQna(Product_qna product_qna);
	public List<Product_qna> productQnaList(Product_qna product_qna,String pageNum);
	public int deleteQna(String pqcode);
	public Product_qna getQna(Product_qna product_qna);
	public int qnaCnt();
}
