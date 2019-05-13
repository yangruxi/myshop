package com.yang.shop.category.vo;

import java.util.HashSet;
import java.util.Set;

import com.yang.shop.product.vo.Product;

/**
 * 二级分类实体类
 * @author yangruxi
 *
 */
public class SecondCategory {
	private Integer secondCategoryId;
	private String secondCategoryName;
	//所属一级分类，存放的是一级分类的对象
	private FirstCategory firstCategory;
	//三级分类的集合
	private Set<ThirdCategory> thirdCategories = new HashSet<ThirdCategory>();
	
	public Integer getSecondCategoryId() {
		return secondCategoryId;
	}
	public void setSecondCategoryId(Integer secondCategoryId) {
		this.secondCategoryId = secondCategoryId;
	}
	public String getSecondCategoryName() {
		return secondCategoryName;
	}
	public void setSecondCategoryName(String secondCategoryName) {
		this.secondCategoryName = secondCategoryName;
	}
	public FirstCategory getFirstCategory() {
		return firstCategory;
	}
	public void setFirstCategory(FirstCategory firstCategory) {
		this.firstCategory = firstCategory;
	}
	public Set<ThirdCategory> getThirdCategories() {
		return thirdCategories;
	}
	public void setThirdCategories(Set<ThirdCategory> thirdCategories) {
		this.thirdCategories = thirdCategories;
	}
	
}
