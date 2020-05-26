package com.javassem.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javassem.domain.ShopVO;

@Repository("shopDAO")
public class ShopDAOImpl implements ShopDAO{

	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertShop(ShopVO vo) {
		System.out.println("===> Mybatis insertShop() 호출");
		mybatis.insert("ShopDAO.insertshop", vo);
	}

	public void updateShop(ShopVO vo) {
		System.out.println("===> Mybatis updateShop() 호출");
		mybatis.update("ShopDAO.updateshop", vo);
	}

	public void deleteShop(ShopVO vo) {
		System.out.println("===> Mybatis deleteShop() 호출");
		mybatis.delete("ShopDAO.deleteshop", vo);
	}

	public ShopVO getShop(ShopVO vo) {
		System.out.println("===> Mybatis getShop() 호출");
		return mybatis.selectOne("ShopDAO.getshop", vo);
	}

	public List<ShopVO> getShopList(ShopVO vo) {
		System.out.println("===> Mybatis getShopList() 호출");
		return mybatis.selectList("ShopDAO.getshopList", vo);
	}
}