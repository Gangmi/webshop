package com.javassem.dao;

import java.util.List;

import com.javassem.domain.ShopVO;

public interface ShopDAO {
	public void insertShop(ShopVO vo);

	public void updateShop(ShopVO vo) ;

	public void deleteShop(ShopVO vo);

	public ShopVO getShop(ShopVO vo) ;

	public List<ShopVO> getShopList(ShopVO vo) ;
}
