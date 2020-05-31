
package com.javassem.dao;

import java.util.List;

import com.javassem.domain.ProductVO;


public interface AdminDAO {

	public List<ProductVO> selectProduct(ProductVO vo) ;
	
}
