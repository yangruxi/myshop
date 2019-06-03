package com.yang.shop.category.service;

import org.springframework.transaction.annotation.Transactional;

import com.yang.shop.category.dao.SecondCategoryDao;
import com.yang.shop.category.vo.SecondCategory;

/**
 * 二级分类业务层
 * @author yangruxi
 *
 */
@Transactional
public class SecondCategoryService {
	//注入dao
	private SecondCategoryDao secondCategoryDao;

	public SecondCategoryDao getSecondCategoryDao() {
		return secondCategoryDao;
	}

	public void setSecondCategoryDao(SecondCategoryDao secondCategoryDao) {
		this.secondCategoryDao = secondCategoryDao;
	}

	//根据二级分类ID查询该二级分类
	public SecondCategory findBySecondCategoryId(Integer secondCategoryId) {
		return secondCategoryDao.findBySecondCategoryId(secondCategoryId);
	}
	
}
