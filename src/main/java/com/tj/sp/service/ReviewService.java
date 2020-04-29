package com.tj.sp.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.tj.sp.dto.Review;

public interface ReviewService {
	public List<Review> listReview(Review review, String pagenum);
	public int insertReview(MultipartHttpServletRequest mRequest, Review review);
	public int deleteReview(String rcode);
}