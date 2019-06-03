package com.yang.shop.product.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.yang.shop.product.dao.ProductDao;
import com.yang.shop.product.vo.Product;
import com.yang.shop.product.vo.ProductDetail;
import com.yang.shop.product.vo.ProductPic;
import com.yang.shop.utils.PageBean;

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

//	public ProductPic findPicByPid(Integer goodId) {
//		return productDao.findPicByPid(goodId);
//	}

//	public List<ProductDetail> findDetailBypid(Integer goodId) {
//		return productDao.findDetailBypid(goodId);
//	}

	//根据一级分类的ID查询商品，带分页
	public PageBean<Product> findByPageFCid(Integer firstCategoryId, int page) throws Exception {
		PageBean<Product> pageBean = new PageBean<Product>();
		//设置页码
		pageBean.setPage(page);
		//设置每页显示记录数
		int limit = 8;
		pageBean.setLimit(limit);
		//设置总记录数
		int totalCount = productDao.findTotalCountByFCid(firstCategoryId);
		pageBean.setTotalCount(totalCount);
		//设置总页数
		int totalPage = 0;
		if(totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		//每页显示的数据集合
		//开始的地方
		int begin = (page - 1) * limit;
		List<Product> list = productDao.findByPageFCid(firstCategoryId,begin,limit);
		pageBean.setList(list);
		return pageBean;
	}

	//根据二级分类的ID查询商品，带分页
	public PageBean<Product> findByPageSCid(Integer secondCategoryId, int page) throws Exception {
		PageBean<Product> pageBean = new PageBean<Product>();
		//设置页码
		pageBean.setPage(page);
		//设置每页显示记录数
		int limit = 8;
		pageBean.setLimit(limit);
		//设置总记录数
		int totalCount = productDao.findTotalCountBySCid(secondCategoryId);
		pageBean.setTotalCount(totalCount);
		//设置总页数
		int totalPage = 0;
		if(totalCount % limit == 0) {
			totalPage = totalCount / limit;
		} else {
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		//每页显示数据的集合
		//开始的地方
		int begin = (page - 1) * limit;
		List<Product> list = productDao.findByPageSCid(secondCategoryId, begin, limit);
		pageBean.setList(list);
		return pageBean;
	}
	
}
