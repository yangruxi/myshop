package com.yang.shop.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.yang.shop.user.dao.UserDao;
import com.yang.shop.user.entity.User;

/**
 * 用户模块业务层代码
 * 
 * @author yangruxi
 *
 */
@Transactional
public class UserService {
	//注入dao
	private UserDao userDao;
	
	public UserDao getUserDao() {
		return userDao;
	}


	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}


	// 根据用户名查询用户
	public User findByUsername(String username) {
		return userDao.findByUsername(username);
	}

	//业务层将用户信息存入数据库
	public void save(User user) {
		// TODO Auto-generated method stub
		userDao.save(user);
	}
}
