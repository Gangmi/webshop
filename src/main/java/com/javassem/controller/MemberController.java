package com.javassem.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javassem.domain.ShopVO;
import com.javassem.service.ShopService;

@Controller
public class MemberController {
	
	@Autowired
	private ShopService service;
		
		@RequestMapping("/getShopList.do")
		public void getShopList(ShopVO vo, Model model)
		{
			//검색기능 때문에 ShopVO를 지정했지만 지금은 필요없음
			List<ShopVO> list = service.getShopList(vo);
			model.addAttribute("ShopList",list);
		
		}	//view page : get ShopList.jsp
		
		
		@RequestMapping("/saveShop.do")
		public String saveShop(ShopVO vo)
		{
			service.insertShop(vo);
			
			return "redirect:getShopList.do";
		}
		@RequestMapping("/getShop.do")
		public void getShop(ShopVO vo, Model m ){
			m.addAttribute("Shop",service.getShop(vo));
		}
		
		@RequestMapping("/deleteShop.do")
		public String deleteShop(ShopVO vo)
		{
			service.deleteShop(vo);
			return "redirect:getShopList.do";
		}
		
		@RequestMapping("/updateShop.do")
		public String updateShop(ShopVO vo)
		{
			service.updateShop(vo);
			return "redirect:getShopList.do";
		}


}
