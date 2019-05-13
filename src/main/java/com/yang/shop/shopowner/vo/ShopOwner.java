package com.yang.shop.shopowner.vo;

import java.util.HashSet;
import java.util.Set;

import com.yang.shop.myshop.vo.MyShop;

/**
 * 商家模块实体类
 * @author yangruxi
 *
 */
public class ShopOwner {
	private Integer shopOwnerId;
	private String username;
	private String password;
	private Long ctime;
	//存放店铺的集合
	private Set<MyShop> shops= new HashSet<MyShop>();
	
	public Integer getShopOwnerId() {
		return shopOwnerId;
	}
	public void setShopOwnerId(Integer shopOwnerId) {
		this.shopOwnerId = shopOwnerId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Long getCtime() {
		return ctime;
	}
	public void setCtime(Long ctime) {
		this.ctime = ctime;
	}
	public Set<MyShop> getShops() {
		return shops;
	}
	public void setShops(Set<MyShop> shops) {
		this.shops = shops;
	}
	
}
