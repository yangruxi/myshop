package com.yang.shop.cart.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yang.shop.cart.vo.Cart;
import com.yang.shop.cart.vo.CartItem;
import com.yang.shop.product.service.ProductService;
import com.yang.shop.product.vo.Product;

/**
 * 购物车模块的Action
 * @author yangruxi
 *
 */
public class CartAction extends ActionSupport{
	//接收商品ID
	private Integer pid;
	//接收商品规格名称
	private String attributeName;
	//接收商品规格
	private String attribute;
	//接收商品数量
	private Integer count;
	//注入商品的Service
	private ProductService productService;
	
	public String getAttributeName() {
		return attributeName;
	}

	public void setAttributeName(String attributeName) {
		this.attributeName = attributeName;
	}

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getAttribute() {
		return attribute;
	}

	public void setAttribute(String attribute) {
		this.attribute = attribute;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}
	//查看购物车的方法
	public String myCart() {
		//获取购物车
		return "myCart";
	}
	
	//将购物项添加到购物车执行的方法
	public String addCart() {
		//封装一个CartItem对象
		CartItem cartItem = new CartItem();
		//设置商品属性名称
		cartItem.setAttributeName(attributeName);
		//设置商品属性
		cartItem.setAttribute(attribute);
		//设置商品数量
		cartItem.setCount(count);
		//根据商品ID查询商品
		Product product = productService.findByPid(pid);
		//设置商品
		cartItem.setProduct(product);
		
		//将购物项添加到购物车
		//购物车存放在session中，调用getCart()这个方法可以从session中获取购物车
		Cart cart = getCart();
		cart.addCart(cartItem);
		return "addCart";
	}
	
	//清空购物车
	public String clearCart() {
		//获得购物车对象
		Cart cart = getCart();
		//调用购物车中清空的方法
		cart.clearCart();
		return "clearCart";
	}
	
	//从购物车中移除购物项
	public String removeCart() {
		//获得购物车对象
		Cart cart = getCart();
		//调用购物车中移除购物项方法
		cart.removeCart(pid);
		return "removeCart";
	}
	
	//从session中获得购物车
	public Cart getCart() {
		Cart cart = (Cart) ServletActionContext.getRequest().getSession().getAttribute("cart");
		if(cart == null) {
			cart = new Cart();
			ServletActionContext.getRequest().getSession().setAttribute("cart", cart);
		}
		return cart;
	}
}
