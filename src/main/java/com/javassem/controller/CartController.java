package com.javassem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import com.javassem.service.ShopService;

@Controller
public class CartController {
	@Autowired
	private ShopService service;
	
	@RequestMapping("/product-details.do")
	public void getShopList(String id, Model model)
	{
		model.addAttribute("id",id);
		
	}
	
	  @RequestMapping("/cart.do") 
	  public void cart(String id,String quantity, Model model) {
	  model.addAttribute("id",id);
	  model.addAttribute("quantity",quantity);
	  
	  System.out.println(quantity);
	  
	  }
	 

}
