package com.tj.sp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tj.sp.service.FavoriteService;

@Controller
@RequestMapping("favorite")
public class FavoriteController {
	@Autowired
	private FavoriteService favoriteService;
	@RequestMapping(params="method=check", method =RequestMethod.GET)
	public String checkFavorite(String pcode, String cid, Model model) {
		int check = favoriteService.checkFavorite(cid, pcode);
		if(check==1) {
			favoriteService.deleteFavorite(cid, pcode);
		}else {
			favoriteService.insertFavorite(cid, pcode);
		}
		model.addAttribute("check",favoriteService.checkFavorite(cid, pcode));
		return "product/favoriteBtn";
	}
	
	
}
