package com.yang.shop.shopowner.dao;

import org.hibernate.Session;
/**
 * 商家模块持久层代码
 */
import org.hibernate.SessionFactory;

import com.yang.shop.shopowner.vo.ShopOwner;

public class ShopOwnerDao {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	//将商家信息存入数据库
	public void save(ShopOwner shopOwner) {
		Session session = sessionFactory.getCurrentSession();
		session.save(shopOwner);
	}
	

}
