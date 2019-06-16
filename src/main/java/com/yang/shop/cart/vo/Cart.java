package com.yang.shop.cart.vo;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * 购物车对象
 * @author yangruxi
 *
 */
public class Cart {
	//购物车的属性:
	//购物项集合:Map的key:商品ID,Map的value:购物项
	private Map<Integer,CartItem> map = new LinkedHashMap<Integer,CartItem>();
	
	public Collection<CartItem> getCartItems() {
		return map.values();
	}
	
	//购物总计金额
	private double total;

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	//购物车的功能:
	//1.将购物项添加到购物车
	public void addCart(CartItem cartItem){
		/**
		 * 判断购物车中是否已存在这个购物项:
		 * 	* 如果存在:
		 * 		** 数量增加
		 * 		** 总计 = 总计 + 添加的购物项小计金额
		 * 	* 如果不存在:
		 * 		** 向map中添加购物项
		 * 		** 总计 = 总计 + 添加的购物项小计金额
		 */
		//获得商品ID
		Integer pid = cartItem.getProduct().getGoodId();
		//判断购物车中是否存在该购物项
		if(map.containsKey(pid)) {
			//存在
			CartItem _caCartItem = map.get(pid);
			_caCartItem.setCount(_caCartItem.getCount() + cartItem.getCount());
		} else {
			//不存在
			map.put(pid, cartItem);
		}
		//设置总计
		total += cartItem.getSubTotal();
	}
	
	//2.将购物项从购物车中移除
	public void removeCart(Integer pid) {
		//将购物项移除购物车
		CartItem cartItem = map.remove(pid);
		//总计 = 总计 - 移除的购物项小计金额
		total -= cartItem.getSubTotal();
	}
	
	//3.清空购物车
	public void clearCart(){
		//将所有购物项清空
		map.clear();
		
		//将总计置为0
		total = 0;
	}
}
