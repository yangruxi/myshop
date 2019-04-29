package com.yang.shop.shopowner.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yang.shop.shopowner.service.ShopOwnerService;
import com.yang.shop.shopowner.vo.ShopOwner;

public class ShopOwnerAction extends ActionSupport implements ModelDriven<ShopOwner>{
	//模型驱动使用的对象
	private ShopOwner shopOwner = new ShopOwner();
	
	//注入Service
	private ShopOwnerService shopOwnerService;
	
	public ShopOwner getShopOwner() {
		return shopOwner;
	}

	public void setShopOwner(ShopOwner shopOwner) {
		this.shopOwner = shopOwner;
	}

	public ShopOwnerService getShopOwnerService() {
		return shopOwnerService;
	}

	public void setShopOwnerService(ShopOwnerService shopOwnerService) {
		this.shopOwnerService = shopOwnerService;
	}

	public ShopOwner getModel() {
		// TODO Auto-generated method stub
		return shopOwner;
	}
	
	/**
	 * 商家注册的方法
	 */
	public String save() {
		long ctime = System.currentTimeMillis();
		shopOwner.setCtime(ctime);
		shopOwnerService.save(shopOwner);
		return NONE;
	}
}
