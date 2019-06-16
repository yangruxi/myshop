package com.yang.shop.cart.vo;

import com.yang.shop.product.vo.Product;

/**
 * 购物项对象
 * @author yangruxi
 *
 */
public class CartItem {
	private Product product;      //购物项中商品的信息
	private String attributeName; //购物车中商品的属性名称：规格、尺码等
	private String attribute;     //购物项中商品被选择的属性
	private int count; 		      //购物车中对应商品的数量
	private double subTotal;      //购买某种商品的小计金额
	
	public String getAttributeName() {
		return attributeName;
	}
	public void setAttributeName(String attributeName) {
		this.attributeName = attributeName;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public String getAttribute() {
		return attribute;
	}
	public void setAttribute(String attribute) {
		this.attribute = attribute;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	//小计 = 商品价格 * 数量
	public double getSubTotal() {
		return product.getNowPrice() * count;
	}
//	public void setSubTotal(double subTotal) {
//		this.subTotal = subTotal;
//	}
	
}
