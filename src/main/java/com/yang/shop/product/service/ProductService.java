package com.yang.shop.product.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.yang.shop.product.dao.ProductDao;
import com.yang.shop.product.vo.Product;
import com.yang.shop.product.vo.ProductDetail;
import com.yang.shop.product.vo.ProductPic;

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

	public List<Product> findByCategory1() {
		return productDao.findByCategory1();
	}

	public List<Product> findByCategory2() {
		return productDao.findByCategory2();
	}

	public List<Product> findByCategory3() {
		return productDao.findByCategory3();
	}

	public List<Product> findByCategory4() {
		return productDao.findByCategory4();
	}

	public Product findByPid(Integer goodId) {
		return productDao.findByPid(goodId);
	}

	public ProductPic findPicByPid(Integer goodId) {
		return productDao.findPicByPid(goodId);
	}

	public List<ProductDetail> findDetailBypid(Integer goodId) {
		return productDao.findDetailBypid(goodId);
	}
	
}
