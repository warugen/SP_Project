package com.tj.sp.dao;

import java.util.List;

import com.tj.sp.dto.Favorite;

public interface FavoriteDao {
	public List<Favorite> getWish(Favorite favorite);
	public int totalMyWish();
	public int totalProductWish();
	public int removeWish(String pcode);
	public int addWish(Favorite favorite);
}
