package com.yang.shop.product.vo;

import com.yang.shop.myshop.vo.MyShop;

/**
 * 商品详情图片实体类
 * @author yangruxi
 *
 */
public class ProductPic {
	private Integer picId;
	private String pic1;
	private String pic2;
	private String pic3;
	private String pic4;
	private String pic5;
	//商品ID的外键，使用商品的对象
	private Product product;
	
	public Integer getPicId() {
		return picId;
	}
	public void setPicId(Integer picId) {
		this.picId = picId;
	}
	public String getPic1() {
		return pic1;
	}
	public void setPic1(String pic1) {
		this.pic1 = pic1;
	}
	public String getPic2() {
		return pic2;
	}
	public void setPic2(String pic2) {
		this.pic2 = pic2;
	}
	public String getPic3() {
		return pic3;
	}
	public void setPic3(String pic3) {
		this.pic3 = pic3;
	}
	public String getPic4() {
		return pic4;
	}
	public void setPic4(String pic4) {
		this.pic4 = pic4;
	}
	public String getPic5() {
		return pic5;
	}
	public void setPic5(String pic5) {
		this.pic5 = pic5;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
}
