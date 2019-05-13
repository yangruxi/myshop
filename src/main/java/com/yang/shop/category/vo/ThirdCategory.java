package com.yang.shop.category.vo;

import java.util.HashSet;
import java.util.Set;

import com.yang.shop.product.vo.Product;

/**
 * 三级分类实体类对象
 * @author yangruxi
 *
 */
public class ThirdCategory {
	private Integer thirdCategoryId;
	private String thirdCategoryName;
	//三级分类存放二级分类的对象
	private SecondCategory secondCategory;
	//商品集合
	private Set<Product> products = new HashSet<Product>();
		
	public Integer getThirdCategoryId() {
		return thirdCategoryId;
	}
	public void setThirdCategoryId(Integer thirdCategoryId) {
		this.thirdCategoryId = thirdCategoryId;
	}
	public String getThirdCategoryName() {
		return thirdCategoryName;
	}
	public void setThirdCategoryName(String thirdCategoryName) {
		this.thirdCategoryName = thirdCategoryName;
	}
	public SecondCategory getSecondCategory() {
		return secondCategory;
	}
	public void setSecondCategory(SecondCategory secondCategory) {
		this.secondCategory = secondCategory;
	}
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
}
