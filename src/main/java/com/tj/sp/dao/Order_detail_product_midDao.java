package com.tj.sp.dao;

import java.util.List;

import com.tj.sp.dto.Order_detail_product_mid;

public interface Order_detail_product_midDao {
	public List<Order_detail_product_mid> listOrder_detailByCid(Order_detail_product_mid order_detail_product_mid);
	public int cntOrder_detailByCid(String cid);
}
