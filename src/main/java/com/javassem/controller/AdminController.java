package com.javassem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.javassem.domain.ProductVO;
import com.javassem.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService service;
	
	// 대시보드
	 @RequestMapping("/dashBoard.do")
	 public String dashBoard() {
		 return "admin/dashboard";
	 }
	// 차트
	 @RequestMapping("/charts.do")
	 public String charts() {
		 return "admin/charts";
	 }
	 // 회원 관리
	 @RequestMapping("/memberManagement.do")
	 public String memberManagement() {
		 return "admin/memberManagement";
	 }
	 
	 // 사원 관리
	 @RequestMapping("/employeeManagement.do")
	 public String employeeManagement () {
		 return "admin/employeeManagement";
	 }
	 
	 // 재고 검색
	 @RequestMapping("/inventorySituation.do")
	 public ModelAndView inventorySituation(ProductVO vo) {
		 System.out.println("컨트롤 도착");
	 List<ProductVO> listVO = service.selectProduct(vo);
	 System.out.println("디비 갔다옴");
	 ModelAndView mv = new ModelAndView();
	 System.out.println("mv 객체 생성");
	 mv.setViewName("admin/inventorySituation");
	 mv.addObject("listVO",listVO);
	 System.out.println(" list 저장");
	 return mv;
	 }
//	 public String inventorySituation() {
//		 return "admin/inventorySituation";
//	 
//	 }
	 
	 // 배송 현황
	 @RequestMapping("/deliverySituation.do")
	 public String deliverySituation() {
		 return "admin/deliverySituation";
	 }
	 
	 // 컨설팅 예약 관리
	 @RequestMapping("/consultingReservation.do")
	 public String consultingReservation() {
		 return "admin/consultingReservation";
	 }
	 
	 
}
