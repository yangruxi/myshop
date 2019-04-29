package com.yang.shop.shopowner.service;

import org.springframework.transaction.annotation.Transactional;

/**
 * 商家模块业务层代码
 */
import com.yang.shop.shopowner.dao.ShopOwnerDao;
import com.yang.shop.shopowner.vo.ShopOwner;

@Transactional
public class ShopOwnerService {
	private ShopOwnerDao shopOwnerDao;

	public ShopOwnerDao getShopOwnerDao() {
		return shopOwnerDao;
	}

	public void setShopOwnerDao(ShopOwnerDao shopOwnerDao) {
		this.shopOwnerDao = shopOwnerDao;
	}
	
	//商家登录的方法
	public void save(ShopOwner shopOwner) {
		shopOwnerDao.save(shopOwner);
	}
	
}
