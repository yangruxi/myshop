package com.yang.shop.category.service;

import org.springframework.transaction.annotation.Transactional;

import com.yang.shop.category.dao.SecondCategoryDao;
import com.yang.shop.category.dao.ThirdCategoryDao;
import com.yang.shop.category.vo.SecondCategory;
import com.yang.shop.category.vo.ThirdCategory;

/**
 * 三级分类业务层
 * @author yangruxi
 *
 */
@Transactional
public class ThirdCategoryService {
	//注入dao
	private ThirdCategoryDao thirdCategoryDao;
	
	public ThirdCategoryDao getThirdCategoryDao() {
		return thirdCategoryDao;
	}


	public void setThirdCategoryDao(ThirdCategoryDao thirdCategoryDao) {
		this.thirdCategoryDao = thirdCategoryDao;
	}

	//根据三级分类ID查询该三级分类
	public ThirdCategory findByThirdCategoryId(Integer thirdCategoryId) {
		return thirdCategoryDao.findByThirdCategoryId(thirdCategoryId);
	}
	
}
