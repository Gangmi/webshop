package com.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javassem.dao.AdminDAOImpl;
import com.javassem.domain.ProductVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAOImpl adminDAO;
	
	public void showChart() {
		adminDAO.showChart();
	}
	
	public List<ProductVO> selectProduct(ProductVO vo) {
		return adminDAO.selectProduct(vo);
	}
	

	

	
}
