package com.yang.shop.admin.vo;

/**
 * 超级管理员模块实体类
 * @author yangruxi
 *
 */
public class Admin {
	private Integer adminId;
	private String username;
	private String password;
	public Integer getAdminId() {
		return adminId;
	}
	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
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
	
}
