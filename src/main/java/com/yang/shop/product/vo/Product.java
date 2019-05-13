package com.yang.shop.product.vo;

import com.yang.shop.category.vo.ThirdCategory;
import com.yang.shop.myshop.vo.MyShop;

/**
 * 商品模块的实体类
 * @author yangruxi
 *
 */
public class Product {
	private Integer goodId;
	private String goodName;
	private double oldPrice;
	private double nowPrice;
	private String goodPic;
	private Integer goodNum;
	private String goodDesc;
	private Integer isHot;
	private Long ctime;
	//店铺ID的外键，使用店铺的对象
	private MyShop shop;
	//三级分类ID的外键，使用三级分类的对象
	private ThirdCategory thirdCategory;
	
	public Integer getGoodId() {
		return goodId;
	}
	public void setGoodId(Integer goodId) {
		this.goodId = goodId;
	}
	public String getGoodName() {
		return goodName;
	}
	public void setGoodName(String goodName) {
		this.goodName = goodName;
	}
	public double getOldPrice() {
		return oldPrice;
	}
	public void setOldPrice(double oldPrice) {
		this.oldPrice = oldPrice;
	}
	public double getNowPrice() {
		return nowPrice;
	}
	public void setNowPrice(double nowPrice) {
		this.nowPrice = nowPrice;
	}
	public String getGoodPic() {
		return goodPic;
	}
	public void setGoodPic(String goodPic) {
		this.goodPic = goodPic;
	}
	public Integer getGoodNum() {
		return goodNum;
	}
	public void setGoodNum(Integer goodNum) {
		this.goodNum = goodNum;
	}
	public String getGoodDesc() {
		return goodDesc;
	}
	public void setGoodDesc(String goodDesc) {
		this.goodDesc = goodDesc;
	}
	public Integer getIsHot() {
		return isHot;
	}
	public void setIsHot(Integer isHot) {
		this.isHot = isHot;
	}
	public Long getCtime() {
		return ctime;
	}
	public void setCtime(Long ctime) {
		this.ctime = ctime;
	}
	public ThirdCategory getThirdCategory() {
		return thirdCategory;
	}
	public void setThirdCategory(ThirdCategory thirdCategory) {
		this.thirdCategory = thirdCategory;
	}
	public MyShop getShop() {
		return shop;
	}
	public void setShop(MyShop shop) {
		this.shop = shop;
	}
	
}
