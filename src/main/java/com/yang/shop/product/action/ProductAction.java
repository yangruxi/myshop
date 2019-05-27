package com.yang.shop.product.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yang.shop.category.service.FirstCategoryService;
import com.yang.shop.category.vo.FirstCategory;
import com.yang.shop.product.service.ProductService;
import com.yang.shop.product.vo.Product;
import com.yang.shop.product.vo.ProductDetail;
import com.yang.shop.product.vo.ProductPic;
import com.yang.shop.utils.PageBean;

/**
 * 商品模块的Action类
 * @author yangruxi
 *
 */
public class ProductAction extends ActionSupport implements ModelDriven<Product>{
	//用于接收数据的模型驱动对象
	private Product product = new Product(); 
	//注入ProductService
	private ProductService productService;
	//接收一级分类ID
	private Integer firstCategoryId;
	//接收当前页数
	private int page;
	//注入一级分类的Service
	private FirstCategoryService firstCategoryService;
	
	public FirstCategoryService getFirstCategoryService() {
		return firstCategoryService;
	}

	public void setFirstCategoryService(FirstCategoryService firstCategoryService) {
		this.firstCategoryService = firstCategoryService;
	}

	public Integer getFirstCategoryId() {
		return firstCategoryId;
	}

	public void setFirstCategoryId(Integer firstCategoryId) {
		this.firstCategoryId = firstCategoryId;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public Product getModel() {
		return product;
	}
	
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	//根据商品ID查询商品
	public String findByPid() {
		//通过商品表查询商品信息
		product = productService.findByPid(product.getGoodId());
		
		//通过商品详情图片表查询商品详情图片
		ProductPic productPics = productService.findPicByPid(product.getGoodId());
		//将商品详情图片结果存入值栈
		ActionContext.getContext().getValueStack().set("productPics", productPics);
		
		//通过商品细节表查询商品细节
		List<ProductDetail> dList = productService.findDetailBypid(product.getGoodId());
		//将商品细节存入值栈
		ActionContext.getContext().getValueStack().set("dList", dList);
		return "findByPid";
	}
	
	//根据一级分类的ID查询商品
	public String findByFirstCategoryId() throws Exception {
		//根据一级分类ID查询该分类下二级分类和三级分类信息
		FirstCategory firstCategory = firstCategoryService.findByFirstCategoryId(firstCategoryId);
		//将一级分类信息存入值栈
		ActionContext.getContext().getValueStack().set("firstCategory", firstCategory);
		
		//根据一级分类查询一级分类下的所有商品,带分页
		PageBean<Product> pageBean = productService.findByPageFCid(firstCategoryId,page);
		//将pageBean存入值栈
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		
		//productService.findByFirstCategoryId(firstCategoryId);
		return "findByFirstCategoryId";
	}
}
