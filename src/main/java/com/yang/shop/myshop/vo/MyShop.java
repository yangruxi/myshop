package com.yang.shop.myshop.vo;

import java.util.HashSet;
import java.util.Set;

import com.yang.shop.area.vo.Area;
import com.yang.shop.category.vo.FirstCategory;
import com.yang.shop.product.vo.Product;
import com.yang.shop.shopowner.vo.ShopOwner;

public class MyShop {
	private Integer shopId;
	private String shopName;
	private String shopPic;
	private String shopBrief;
	private Long ctime;
	//店家的ID作为外键，使用店家的对象
	private ShopOwner shopOwner;
	//区域ID作为外键，使用区域的对象
	private Area area;
	//一级分类作为外键
	private FirstCategory firstCategory;
	//存放商品的集合
	private Set<Product> products = new HashSet<Product>();
	
	public Integer getShopId() {
		return shopId;
	}
	public void setShopId(Integer shopId) {
		this.shopId = shopId;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getShopPic() {
		return shopPic;
	}
	public void setShopPic(String shopPic) {
		this.shopPic = shopPic;
	}
	public String getShopBrief() {
		return shopBrief;
	}
	public void setShopBrief(String shopBrief) {
		this.shopBrief = shopBrief;
	}
	public Long getCtime() {
		return ctime;
	}
	public void setCtime(Long ctime) {
		this.ctime = ctime;
	}
	public ShopOwner getShopOwner() {
		return shopOwner;
	}
	public void setShopOwner(ShopOwner shopOwner) {
		this.shopOwner = shopOwner;
	}
	public Area getArea() {
		return area;
	}
	public void setArea(Area area) {
		this.area = area;
	}
	public FirstCategory getFirstCategory() {
		return firstCategory;
	}
	public void setFirstCategory(FirstCategory firstCategory) {
		this.firstCategory = firstCategory;
	}
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	
}
