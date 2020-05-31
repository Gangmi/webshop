package com.javassem.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javassem.domain.ProductVO;


@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	public List<ProductVO> selectProduct(ProductVO vo) {
		System.out.println("mybatis selectProduct() 호출");
		return mybatis.selectList("AdminDAO.inventoryList",vo);
	}
	
	public void showChart() {
		System.out.println("mybatis showchart() 호출");
		
	}



	


}
