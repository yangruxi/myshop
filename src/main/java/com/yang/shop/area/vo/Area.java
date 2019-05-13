package com.yang.shop.area.vo;

import java.util.HashSet;
import java.util.Set;

import com.yang.shop.myshop.vo.MyShop;

public class Area {
	private Integer areaId;
	private String areaName;
	//存放店铺的集合
	private Set<MyShop> shops = new HashSet<MyShop>();
	
	public Integer getAreaId() {
		return areaId;
	}
	public void setAreaId(Integer areaId) {
		this.areaId = areaId;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public Set<MyShop> getShops() {
		return shops;
	}
	public void setShops(Set<MyShop> shops) {
		this.shops = shops;
	}
	
}
