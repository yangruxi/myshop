package com.yang.shop.product.action;

import com.yang.shop.product.service.ProductService;

/**
 * 商品模块的Action类
 * @author yangruxi
 *
 */
public class ProductAction {
	//注入ProductService
	private ProductService productService;

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	
}
