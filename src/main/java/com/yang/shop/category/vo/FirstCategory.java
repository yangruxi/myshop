package com.yang.shop.category.vo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import com.yang.shop.myshop.vo.MyShop;


/**
 * 一级分类的实体类
 * @author yangruxi
 *
 */
public class FirstCategory implements Serializable{
	private Integer firstCategoryId;
	private String firstCategoryName;
	//一级分类中存放二级分类的集合
	private Set<SecondCategory> secondCategories = new HashSet<SecondCategory>();
	//一级分类中存放店铺的集合
	private Set<MyShop> shops = new HashSet<MyShop>();
	
	public Integer getFirstCategoryId() {
		return firstCategoryId;
	}
	public void setFirstCategoryId(Integer firstCategoryId) {
		this.firstCategoryId = firstCategoryId;
	}
	public String getFirstCategoryName() {
		return firstCategoryName;
	}
	public void setFirstCategoryName(String firstCategoryName) {
		this.firstCategoryName = firstCategoryName;
	}
	public Set<SecondCategory> getSecondCategories() {
		return secondCategories;
	}
	public void setSecondCategories(Set<SecondCategory> secondCategories) {
		this.secondCategories = secondCategories;
	}
	public Set<MyShop> getShops() {
		return shops;
	}
	public void setShops(Set<MyShop> shops) {
		this.shops = shops;
	}
	
}
