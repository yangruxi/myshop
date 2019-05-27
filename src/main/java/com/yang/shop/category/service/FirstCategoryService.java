package com.yang.shop.category.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.yang.shop.category.dao.FirstCategoryDao;
import com.yang.shop.category.vo.FirstCategory;

/**
 * 一级分类业务层
 * @author yangruxi
 *
 */
@Transactional
public class FirstCategoryService {
	//注入dao
	private FirstCategoryDao firstCategoryDao;

	public FirstCategoryDao getFirstCategoryDao() {
		return firstCategoryDao;
	}

	public void setFirstCategoryDao(FirstCategoryDao firstCategoryDao) {
		this.firstCategoryDao = firstCategoryDao;
	}

	//业务层查询所有一级分类
	public List<FirstCategory> findAll() {
		return firstCategoryDao.findAll();
	}
	
	//根据一级分类ID查询该一级分类信息
	public FirstCategory findByFirstCategoryId(Integer firstCategoryId) {
		return firstCategoryDao.findByFirstCategoryId(firstCategoryId);
	}
}
