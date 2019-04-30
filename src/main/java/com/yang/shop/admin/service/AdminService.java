package com.yang.shop.admin.service;

import org.springframework.transaction.annotation.Transactional;

import com.yang.shop.admin.dao.AdminDao;
import com.yang.shop.admin.vo.Admin;

/**
 * 超级管理员模块的业务层代码
 * @author yangruxi
 *
 */
@Transactional
public class AdminService {
	//注入Dao
	private AdminDao adminDao;

	public AdminDao getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	//超级管理员登录
	public Admin signin(Admin admin) {
		return adminDao.signin(admin);
	}
	
}
