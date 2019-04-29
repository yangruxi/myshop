package com.yang.shop.shopowner.vo;

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
	
}
