package com.yang.shop.product.vo;

import com.yang.shop.myshop.vo.MyShop;

/**
 * 商品详情图片实体类
 * @author yangruxi
 *
 */
public class ProductPic {
	private Integer picId;
	private String pic;
	//商品ID的外键，使用商品的对象
	private Product product;
	
	public Integer getPicId() {
		return picId;
	}
	public void setPicId(Integer picId) {
		this.picId = picId;
	}
	
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
}
