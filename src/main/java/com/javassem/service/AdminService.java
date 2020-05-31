package com.javassem.service;

import java.util.List;

import com.javassem.domain.ProductVO;


public interface AdminService {
	// CRUD 기능의 메소드 구현
	void showChart();
	
	List<ProductVO> selectProduct(ProductVO vo);
	
	
	
	
	
	
}