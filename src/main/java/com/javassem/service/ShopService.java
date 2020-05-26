package com.javassem.service;

import java.util.List;

import com.javassem.domain.ShopVO;



public interface ShopService {
	// CRUD 기능의 메소드 구현
	// 글 등록
	void insertShop(ShopVO vo);

	// 글 수정
	void updateShop(ShopVO vo);

	// 글 삭제
	void deleteShop(ShopVO vo);

	// 글 상세 조회
	ShopVO getShop(ShopVO vo);

	// 글 목록 조회
	List<ShopVO> getShopList(ShopVO vo);
}
