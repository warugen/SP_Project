package com.tj.sp.service;

import java.util.List;

import com.tj.sp.dto.Review;

public interface ReviewService {
	public List<Review> listReview(Review review, String pagenum);
	
}
