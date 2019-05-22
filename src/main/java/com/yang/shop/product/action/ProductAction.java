package com.yang.shop.product.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yang.shop.product.service.ProductService;
import com.yang.shop.product.vo.Product;
import com.yang.shop.product.vo.ProductDetail;
import com.yang.shop.product.vo.ProductPic;

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
}
