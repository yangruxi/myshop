package com.yang.shop.product.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.yang.shop.product.dao.ProductDao;
import com.yang.shop.product.vo.Product;

/**
 * 商品模块的业务层代码
 * @author yangruxi
 *
 */
@Transactional
public class ProductService {
	private ProductDao productDao;

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	public List<Product> findHot() {
		return productDao.findHot();
	}
	
}
