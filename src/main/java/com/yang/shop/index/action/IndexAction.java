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
		
		//查询第一个分类下的最新商品
		List<Product> nList1 = productService.findByCategory1();
		//将最新商品集合存入值栈
		ActionContext.getContext().getValueStack().set("nList1", nList1);
		//查询第二个分类下的最新商品
		List<Product> nList2 = productService.findByCategory2();
		//将最新商品集合存入值栈
		ActionContext.getContext().getValueStack().set("nList2", nList2);
		//查询第三个分类下的最新商品
		List<Product> nList3 = productService.findByCategory3();
		//将最新商品集合存入值栈
		ActionContext.getContext().getValueStack().set("nList3", nList3);
		//查询第四个分类下的最新商品
		List<Product> nList4 = productService.findByCategory4();
		//将最新商品集合存入值栈
		ActionContext.getContext().getValueStack().set("nList4", nList4);
		return "index";
	}
}
