package com.tj.sp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tj.sp.dao.ReviewDao;
import com.tj.sp.dto.Review;
import com.tj.sp.util.Paging;
@Service
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	private ReviewDao reviewDao;
	@Override
	public List<Review> listReview(Review review, String pagenum) {
		System.out.println(review.getPcode());
		String pcode = review.getPcode();
		Paging paging = new Paging(reviewDao.cntReview(pcode),pagenum, 5, 10);
		review.setStartrow(paging.getStartrow());
		review.setEndrow(paging.getEndrow());
		System.out.println(paging.getStartrow());
		System.out.println(paging.getEndrow());
		System.out.println(review.toString());
		return reviewDao.listReview(review);
	}

}
