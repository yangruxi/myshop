package com.yang.shop.index.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.yang.shop.category.service.FirstCategoryService;
import com.yang.shop.category.vo.FirstCategory;
import com.yang.shop.product.service.ProductService;
import com.yang.shop.product.vo.Product;

/**
 * 首页访问的Action
 * @author yangruxi
 *
 */
public class IndexAction extends ActionSupport{
	//注入一级分类的Service
	private FirstCategoryService firstCategoryService;
	
	//注入商品的Service
	private ProductService productService;
	
	public FirstCategoryService getFirstCategoryService() {
		return firstCategoryService;
	}

	public void setFirstCategoryService(FirstCategoryService firstCategoryService) {
		this.firstCategoryService = firstCategoryService;
	}

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	//执行访问首页的方法
	public String execute(){
		//查询所有一级分类的集合
		List<FirstCategory> cList = firstCategoryService.findAll();
		//将一级分类存入值栈
		ActionContext.getContext().getValueStack().set("cList", cList);
		//将一级分类存入session
		//ActionContext.getContext().getSession().put("cList", cList);
		//查询热门商品的集合
		List<Product> hList = productService.findHot();
		//将热门商品集合存入值栈
		ActionContext.getContext().getValueStack().set("hList", hList);
		return "index";
	}
}
